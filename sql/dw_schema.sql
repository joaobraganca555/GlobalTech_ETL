USE master
GO

IF EXISTS (SELECT name
FROM sys.databases
WHERE name = N'DW_GlobalTech')
ALTER DATABASE DW_GlobalTech SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE IF EXISTS DW_GlobalTech
GO

CREATE DATABASE DW_GlobalTech
GO

USE DW_GlobalTech
GO

IF NOT EXISTS ( SELECT *
FROM sys.schemas
WHERE   name = N'dw' ) 
    EXEC('CREATE SCHEMA [dw]');
GO

------------------------------------------------------------------------------------------------------------

---- TABLE DIM_date

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[DIM_date]
(
	[Date] [date],
	[sk_date] [int] IDENTITY(1,1) NOT NULL,
	[day] [int],
	[dayOfWeek] [int],
	[month] [int],
	[trimester] [int],
	[year] [int],
	[is_holiday] [bit],
  [portugueseWeekName] nvarchar(50),
  [portugueseMonthName] nvarchar(50)
  CONSTRAINT [PK_DIM_date] PRIMARY KEY CLUSTERED 
(
	[sk_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------------------------

--PROCEDURE

/****** Object:  StoredProcedure [Integration].[PopulateDIM_dateForYear]    Script Date: 16/04/2021 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dw].[PopulateDIM_dateForYear]
  @YearNumber int
WITH
  EXECUTE AS OWNER
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  DECLARE @DateCounter date = DATEFROMPARTS(@YearNumber, 1, 1);

  CREATE TABLE #DIM_date
  (
    [Date] [date],
    [sk_date] [int] NOT NULL,
    [day] [int],
    [dayOfWeek] [int],
    [month] [int],
    [trimester] [int],
    [year] [int]
  );

  BEGIN TRY;
        BEGIN TRAN;
        WHILE YEAR(@DateCounter) = @YearNumber
        BEGIN
    IF NOT EXISTS (SELECT 1
    FROM #DIM_date
    WHERE [date] = @DateCounter)
            BEGIN
      INSERT #DIM_date
        ( [Date]
        , [sk_date]
        , [day]
        , [dayOfWeek]
        , [month]
        , [trimester]
        , [year]
        )
      SELECT [Date] 
            , [sk_date]                               
			, [day]
			, [dayOfWeek]
			, [month]
			, [trimester]
			, [year]
      FROM GenerateDIM_dateColumns(@DateCounter);
    END;
    SET @DateCounter = DATEADD(day, 1, @DateCounter);
  END;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0 ROLLBACK;
        PRINT N'Unable to populate dates for the year';
        THROW;
        RETURN -1;
    END CATCH;

  SELECT *
  FROM #DIM_date;

  DROP TABLE #DIM_date;
END;

 ------------------------------------------------------------------------------------------------------------

--FUNCTION

GO
/****** Object:  UserDefinedFunction [Integration].[GenerateDIM_dateColumns]    Script Date: 16/04/2021 12:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dw].[GenerateDIM_dateColumns](@Date date)
RETURNS TABLE
AS
RETURN 
SELECT @Date                                             AS [Date]                             -- 2013-01-01
     , YEAR(@Date) * 10000                                                                     
       + MONTH(@Date) * 100 + DAY(@Date)                 AS [sk_date]                          -- 20130101 (to 20131231)          
     , DAY(@Date)                                        AS [day]                              -- 1 (to last day of month)
     , DATEPART(weekday, @Date)                          AS [dayOfWeek]                        -- 3
     , MONTH(@Date)                                      AS [month]                            -- 1 (to 12)
     , DATEPART(quarter, @Date)                          AS [trimester]                        -- 1 (to 4)
     , YEAR(@Date)                                       AS [year]                             -- 2013
;
GO

CREATE TABLE [dw].[DIM_warehouse]
(
  [sk_warehouse] int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  [bk_warehouse] int NOT NULL,
  [city] varchar(50) NOT NULL,
  [name] varchar(255) NOT NULL,
  [state] varchar(50),
  [country] varchar(40) NOT NULL,
  [region] varchar(50) NOT NULL,
  [postal_code] varchar(20)
)
GO

CREATE TABLE [dw].[DIM_product]
(
  [sk_product] int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  [bk_product] int NOT NULL,
  [name] varchar(255) NOT NULL,
  [category] varchar(255) NOT NULL,
  [description] varchar(2000) NOT NULL
)
GO

CREATE TABLE [dw].[DIM_customer]
(
  [sk_customer] int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  [bk_customer] int NOT NULL,
  [phone] varchar(20),
  [name] varchar(255) NOT NULL,
  [address] varchar(255) NOT NULL,
  [credit_limit] DECIMAL(8,2) NOT NULL,
  [validFrom] DATETIME,
  [validTo] DATETIME
)
GO


CREATE TABLE [dw].[DIM_employee]
(
  [sk_employee] int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  [bk_employee] int NOT NULL,
  [name] varchar(255) NOT NULL,
  [hire_date] datetime NOT NULL,
  [manager] int
)
GO

CREATE TABLE [dw].[FACT_order]
(
  [order_id] int,
  [order_line] int,
  [sk_warehouse] int NOT NULL,
  [sk_product] int NOT NULL,
  [sk_customer] int NOT NULL,
  [sk_date] int NOT NULL,
  [sk_employee] int NOT NULL,
  [status] varchar(20) NOT NULL,
  [standard_cost] decimal(9,2) NOT NULL,
  [unit_price] decimal(8,2) NOT NULL,
  [quantity] decimal(8,2) NOT NULL,
  [total_amount] decimal(9,2) NOT NULL,
  [profit] decimal(9,2) NOT NULL,
  PRIMARY KEY ([order_id], [order_line])
)
GO

CREATE TABLE [dw].[FACT_order_payment]
(
  [sk_customer] int NOT NULL,
  [sk_payment_date] int NOT NULL,
  [sk_order_date] int NOT NULL,
  [sk_limit_payment_date] int NOT NULL,
  [sk_employee] int NOT NULL,
  [paymente_method] varchar(20) NOT NULL,
  [order_id] int,
  [payment_id] int,
  [order_status] varchar(20) NOT NULL,
  [payment_order_completed] bit NOT NULL,
  [value] decimal(8,2) NOT NULL,
  [paid_amount] decimal(9,2) NOT NULL,
  PRIMARY KEY ([order_id], [payment_id])
)
GO

CREATE TABLE [dw].[FACT_shippment]
(
  [sk_product] int NOT NULL,
  [sk_customer] int NOT NULL,
  [sk_date] int NOT NULL,
  [sk_warehouse] int NOT NULL,
  [order_id] int PRIMARY KEY,
  [was_fully_paid] bit NOT NULL,
  [paid_amount] decimal(9,2) NOT NULL,
  [n_days_until_shipment] int NOT NULL
)
GO

CREATE TABLE [dw].[FACT_cancellation]
(
  [sk_product] int NOT NULL,
  [sk_customer] int NOT NULL,
  [sk_date] int NOT NULL,
  [sk_employee] int NOT NULL,
  [sk_warehouse] int NOT NULL,
  [order_id] int PRIMARY KEY,
  [last_status] varchar(20) NOT NULL,
  [was_received] bit NOT NULL,
  [n_days_until_cancellation] int NOT NULL
)
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '1 if is completed or 0 otherwise',
@level0type = N'Schema', @level0name = 'dw',
@level1type = N'Table',  @level1name = 'FACT_order_payment',
@level2type = N'Column', @level2name = 'payment_order_completed';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '1 if received 0 otherwise',
@level0type = N'Schema', @level0name = 'dw',
@level1type = N'Table',  @level1name = 'FACT_cancellation',
@level2type = N'Column', @level2name = 'was_received';
GO