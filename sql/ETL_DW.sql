USE master
GO

--Caso a database esteja em uso
IF EXISTS (SELECT name
FROM sys.databases
WHERE name = N'DW_GlobalTech')
ALTER DATABASE DW_GlobalTech SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE  IF EXISTS DW_GlobalTech
GO

CREATE DATABASE DW_GlobalTech
GO

USE DW_GlobalTech
GO
-------------------------------
CREATE SCHEMA DW
GO

 ------------------------------------------------------------------------------------------------------------

---- TABLE DateDimension

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DW].[DateDimension](
	[Date] [date],
	[DateKey] [int] NOT NULL,
	[Day Number] [int],
	[Day] [nvarchar](10),
	[Day of Year] [nvarchar](5),
	[Day of Year Number] [int],
	[Day of Week English] [nvarchar](20),
	[Day of Week Portuguese] [nvarchar](30),
	[Day of Week Number] [int],
	[Week of Year] [nvarchar](5),
	[Month English] [nvarchar](10),
	[Month Portuguese] [nvarchar](10),
	[Short Month] [nvarchar](3),
	[Quarter] [nvarchar](2),
	[Half of Year] [nvarchar](3),
	[Beginning of Month] [date],
	[Beginning of Quarter] [date],
	[Beginning of Half Year] [date],
	[Beginning of Year] [date],
	[Beginning of Month Label] [nvarchar](40),
	[Beginning of Month Label Short] [nvarchar](40),
	[Beginning of Quarter Label] [nvarchar](40),
	[Beginning of Quarter Label Short] [nvarchar](40),
	[Beginning of Half Year Label] [nvarchar](40),
	[Beginning of Half Year Label Short] [nvarchar](40),
	[Beginning of Year Label] [nvarchar](40),
	[Beginning of Year Label Short] [nvarchar](40),
	[Calendar Day Label] [nvarchar](20),
	[Calendar Day Label Short] [nvarchar](20),
	[Calendar Week Number] [int],
	[Calendar Week Label] [nvarchar](20),
	[Calendar Month Number] [int],
	[Calendar Month Label] [nvarchar](20),
	[Calendar Month Year Label] [nvarchar](20),
	[Calendar Quarter Number] [int],
	[Calendar Quarter Label] [nvarchar](20),
	[Calendar Quarter Year Label] [nvarchar](20),
	[Calendar Half of Year Number] [int],
	[Calendar Half of Year Label] [nvarchar](20),
	[Calendar Year Half of Year Label] [nvarchar](20),
	[Calendar Year] [int],
	[Calendar Year Label] [nvarchar](10),
	[Fiscal Month Number] [int],
	[Fiscal Month Label] [nvarchar](20),
	[Fiscal Quarter Number] [int],
	[Fiscal Quarter Label] [nvarchar](20),
	[Fiscal Half of Year Number] [int],
	[Fiscal Half of Year Label] [nvarchar](20),
	[Fiscal Year] [int],
	[Fiscal Year Label] [nvarchar](10),
	[Date Key] [int],
	[Year Week Key] [int],
	[Year Month Key] [int],
	[Year Quarter Key] [int],
	[Year Half of Year Key] [int],
	[Year Key] [int],
	[Beginning of Month Key] [int],
	[Beginning of Quarter Key] [int],
	[Beginning of Half Year Key] [int],
	[Beginning of Year Key] [int],
	[Fiscal Year Month Key] [int],
	[Fiscal Year Quarter Key] [int],
	[Fiscal Year Half of Year Key] [int],
	[ISO Week Number] [int],
	[Portuguese Holiday Flag] [tinyint],
	[Portuguese Holiday Name] [nvarchar](50) NULL,
	[Portuguese Holiday Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DateDimension] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

 ------------------------------------------------------------------------------------------------------------

--PROCEDURE

GO
/****** Object:  StoredProcedure [Integration].[PopulateDateDimensionForYear]    Script Date: 16/04/2021 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PopulateDateDimensionForYear]
@YearNumber int
WITH EXECUTE AS OWNER
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @DateCounter date = DATEFROMPARTS(@YearNumber, 1, 1);

	CREATE TABLE #DateDimension
    (
       [Date] [date],
		[DateKey] [int] NOT NULL,
		[Day Number] [int],
		[Day] [nvarchar](10),
		[Day of Year] [nvarchar](5),
		[Day of Year Number] [int],
		[Day of Week] [nvarchar](20),
		[Day of Week Number] [int],
		[Week of Year] [nvarchar](5),
		[Month] [nvarchar](10),
		[Short Month] [nvarchar](3),
		[Quarter] [nvarchar](2),
		[Half of Year] [nvarchar](3),
		[Beginning of Month] [date],
		[Beginning of Quarter] [date],
		[Beginning of Half Year] [date],
		[Beginning of Year] [date],
		[Beginning of Month Label] [nvarchar](40),
		[Beginning of Month Label Short] [nvarchar](40),
		[Beginning of Quarter Label] [nvarchar](40),
		[Beginning of Quarter Label Short] [nvarchar](40),
		[Beginning of Half Year Label] [nvarchar](40),
		[Beginning of Half Year Label Short] [nvarchar](40),
		[Beginning of Year Label] [nvarchar](40),
		[Beginning of Year Label Short] [nvarchar](40),
		[Calendar Day Label] [nvarchar](20),
		[Calendar Day Label Short] [nvarchar](20),
		[Calendar Week Number] [int],
		[Calendar Week Label] [nvarchar](20),
		[Calendar Month Number] [int],
		[Calendar Month Label] [nvarchar](20),
		[Calendar Month Year Label] [nvarchar](20),
		[Calendar Quarter Number] [int],
		[Calendar Quarter Label] [nvarchar](20),
		[Calendar Quarter Year Label] [nvarchar](20),
		[Calendar Half of Year Number] [int],
		[Calendar Half of Year Label] [nvarchar](20),
		[Calendar Year Half of Year Label] [nvarchar](20),
		[Calendar Year] [int],
		[Calendar Year Label] [nvarchar](10),
		[Fiscal Month Number] [int],
		[Fiscal Month Label] [nvarchar](20),
		[Fiscal Quarter Number] [int],
		[Fiscal Quarter Label] [nvarchar](20),
		[Fiscal Half of Year Number] [int],
		[Fiscal Half of Year Label] [nvarchar](20),
		[Fiscal Year] [int],
		[Fiscal Year Label] [nvarchar](10),
		[Date Key] [int],
		[Year Week Key] [int],
		[Year Month Key] [int],
		[Year Quarter Key] [int],
		[Year Half of Year Key] [int],
		[Year Key] [int],
		[Beginning of Month Key] [int],
		[Beginning of Quarter Key] [int],
		[Beginning of Half Year Key] [int],
		[Beginning of Year Key] [int],
		[Fiscal Year Month Key] [int],
		[Fiscal Year Quarter Key] [int],
		[Fiscal Year Half of Year Key] [int],
		[ISO Week Number] [int]
    );


    BEGIN TRY;

        BEGIN TRAN;

        WHILE YEAR(@DateCounter) = @YearNumber
        BEGIN
            IF NOT EXISTS (SELECT 1 FROM #DateDimension WHERE [Date] = @DateCounter)
            BEGIN
                INSERT #DateDimension
                       ( [Date]
                       , [DateKey]                              
                       , [Day Number]                        
                       , [Day]                               
                       , [Day of Year]                       
                       , [Day of Year Number]                
                       , [Day of Week]                       
                       , [Day of Week Number]                
                       , [Week of Year]                      
                       , [Month]                             
                       , [Short Month]                       
                       , [Quarter]                           
                       , [Half of Year]
                       , [Beginning of Month]
                       , [Beginning of Quarter]
                       , [Beginning of Half Year] 
                       , [Beginning of Year] 
                       , [Beginning of Month Label]        
                       , [Beginning of Month Label Short]  
                       , [Beginning of Quarter Label]      
                       , [Beginning of Quarter Label Short]
                       , [Beginning of Half Year Label]         
                       , [Beginning of Half Year Label Short]                                               
                       , [Beginning of Year Label]         
                       , [Beginning of Year Label Short]                                               
                       , [Calendar Day Label]                
                       , [Calendar Day Label Short]          
                       , [Calendar Week Number]              
                       , [Calendar Week Label]               
                       , [Calendar Month Number]             
                       , [Calendar Month Label]              
                       , [Calendar Month Year Label]         
                       , [Calendar Quarter Number]           
                       , [Calendar Quarter Label]            
                       , [Calendar Quarter Year Label]       
                       , [Calendar Half of Year Number]      
                       , [Calendar Half of Year Label]       
                       , [Calendar Year Half of Year Label]  
                       , [Calendar Year]                     
                       , [Calendar Year Label]               
                       , [Fiscal Month Number]               
                       , [Fiscal Month Label]                
                       , [Fiscal Quarter Number]             
                       , [Fiscal Quarter Label]              
                       , [Fiscal Half of Year Number]        
                       , [Fiscal Half of Year Label]         
                       , [Fiscal Year]                       
                       , [Fiscal Year Label]                 
                       , [Date Key]                          
                       , [Year Week Key]                     
                       , [Year Month Key]                    
                       , [Year Quarter Key]                  
                       , [Year Half of Year Key]
                       , [Year Key]    
                       , [Beginning of Month Key]   
                       , [Beginning of Quarter Key] 
                       , [Beginning of Half Year Key]             
                       , [Beginning of Year Key]             
                       , [Fiscal Year Month Key]             
                       , [Fiscal Year Quarter Key] 
                       , [Fiscal Year Half of Year Key]          
                       , [ISO Week Number]                   
                       )
                SELECT [Date] 
                       , [DateKey]                             
                       , [Day Number]                        
                       , [Day]                               
                       , [Day of Year]                       
                       , [Day of Year Number]                
                       , [Day of Week]                       
                       , [Day of Week Number]                
                       , [Week of Year]                      
                       , [Month]                             
                       , [Short Month]                       
                       , [Quarter]                           
                       , [Half of Year]                      
                       , [Beginning of Month]
                       , [Beginning of Quarter]
                       , [Beginning of Half of Year]                      
                       , [Beginning of Year]                      
                       , [Beginning of Month Label]        
                       , [Beginning of Month Label Short]  
                       , [Beginning of Quarter Label]      
                       , [Beginning of Quarter Label Short]
                       , [Beginning of Half Year Label]         
                       , [Beginning of Half Year Label Short]   
                       , [Beginning of Year Label]         
                       , [Beginning of Year Label Short]   
                       , [Calendar Day Label]                
                       , [Calendar Day Label Short]          
                       , [Calendar Week Number]              
                       , [Calendar Week Label]               
                       , [Calendar Month Number]             
                       , [Calendar Month Label]              
                       , [Calendar Month Year Label]         
                       , [Calendar Quarter Number]           
                       , [Calendar Quarter Label]            
                       , [Calendar Quarter Year Label]       
                       , [Calendar Half of Year Number]      
                       , [Calendar Half of Year Label]       
                       , [Calendar Year Half of Year Label]  
                       , [Calendar Year]                     
                       , [Calendar Year Label]               
                       , [Fiscal Month Number]               
                       , [Fiscal Month Label]                
                       , [Fiscal Quarter Number]             
                       , [Fiscal Quarter Label]              
                       , [Fiscal Half of Year Number]        
                       , [Fiscal Half of Year Label]         
                       , [Fiscal Year]                       
                       , [Fiscal Year Label]                 
                       , [Date Key]                          
                       , [Year Week Key]                     
                       , [Year Month Key]                    
                       , [Year Quarter Key]                  
                       , [Year Half of Year Key]             
                       , [Year Key]
                       , [Beginning of Month Key]   
                       , [Beginning of Quarter Key] 
                       , [Beginning of Half of Year Key]    
                       , [Beginning of Year Key]    
                       , [Fiscal Year Month Key]             
                       , [Fiscal Year Quarter Key]
                       , [Fiscal Year Half of Year Key]           
                       , [ISO Week Number]                   
                    FROM GenerateDateDimensionColumns(@DateCounter);
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
	FROM #DateDimension;

	DROP TABLE #DateDimension;
END;

 ------------------------------------------------------------------------------------------------------------

--FUNCTION

GO
/****** Object:  UserDefinedFunction [Integration].[GenerateDateDimensionColumns]    Script Date: 16/04/2021 12:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [GenerateDateDimensionColumns](@Date date)
RETURNS TABLE
AS
RETURN 
SELECT @Date                                             AS [Date]                             -- 2013-01-01
     , YEAR(@Date) * 10000                                                                     
       + MONTH(@Date) * 100 + DAY(@Date)                 AS [DateKey]                          -- 20130101 (to 20131231)          
     , DAY(@Date)                                        AS [Day Number]                       -- 1 (to last day of month)
     , DATENAME(day, @Date)                              AS [Day]                              -- 1 (to last day of month)
     , CAST(DATEPART(dy, @Date) AS NVARCHAR(5))          AS [Day of Year]                      -- 1 (to 365)
     , DATEPART(day, @Date)                              AS [Day of Year Number]               -- 1 (to 365)
     , DATENAME(weekday, @Date)                          AS [Day of Week]                      -- Tuesday
     , DATEPART(weekday, @Date)                          AS [Day of Week Number]               -- 3
     , DATENAME(week, @Date)                             AS [Week of Year]                     -- 1
     , DATENAME(month, @Date)                            AS [Month]                            -- January
     , SUBSTRING(DATENAME(month, @Date), 1, 3)           AS [Short Month]                      -- Jan
     , N'Q' + DATENAME(quarter, @Date)                   AS [Quarter]                          -- Q1 (to Q4)
     , N'H' + CASE WHEN DATEPART(month, @Date) < 7                                             
                   THEN N'1'                                                                   
                   ELSE N'2'                                                                   
               END                                       AS [Half of Year]                     -- H1 (or H2)
     , CAST(DATENAME(year, @Date) + N'-' 
           + DATENAME(month, @Date) + N'-01' 
           AS DATE
           )                                             AS [Beginning of Month]               -- 2013-01-01 
     , CASE WHEN MONTH(@Date) BETWEEN  1 AND  3 
            THEN CAST(DATENAME(year, @Date) 
                     + '-01-01' AS DATE
                     )
            WHEN MONTH(@Date) BETWEEN  4 AND  6 
            THEN CAST(DATENAME(year, @Date) 
                     + '-04-01' AS DATE
                     )
            WHEN MONTH(@Date) BETWEEN  7 AND  9 
            THEN CAST(DATENAME(year, @Date) 
                     + '-07-01' AS DATE
                     )
            WHEN MONTH(@Date) BETWEEN 10 AND 12 
            THEN CAST(DATENAME(year, @Date) 
                     + '-10-01' AS DATE
                     )
        END                                              AS [Beginning of Quarter]             -- 2013-01-01
     , CASE WHEN DATEPART(month, @Date) < 7                                             
            THEN CAST(DATENAME(year, @Date) 
                     + '-01-01' AS DATE
                     )
            ELSE CAST(DATENAME(year, @Date) 
                     + '-07-01' AS DATE
                     )
        END                                              AS [Beginning of Half of Year]        -- 2013-01-01
     , CAST(DATENAME(year, @Date) + N'-01-01' AS DATE)   AS [Beginning of Year]                -- 2013-01-01
     , N'Beginning of Month ' + DATENAME(month, @Date) + N'-'
       + DATENAME(year, @Date)                           AS [Beginning of Month Label]
     , N'BOM ' + SUBSTRING(DATENAME(month, @Date), 1, 3) + N'-'
       + DATENAME(year, @Date)                           AS [Beginning of Month Label Short]
     , CASE WHEN MONTH(@Date) BETWEEN  1 AND  3 
            THEN N'Beginning Of Quarter ' + DATENAME(year, @Date) + N'-Q1'
            WHEN MONTH(@Date) BETWEEN  4 AND  6 
            THEN N'Beginning Of Quarter ' + DATENAME(year, @Date) + N'-Q2' 
            WHEN MONTH(@Date) BETWEEN  7 AND  9 
            THEN N'Beginning Of Quarter ' + DATENAME(year, @Date) + N'-Q3'
            WHEN MONTH(@Date) BETWEEN 10 AND 12 
            THEN N'Beginning Of Quarter ' + DATENAME(year, @Date) + N'-Q4' 
        END                                              AS [Beginning of Quarter Label]
     , CASE WHEN MONTH(@Date) BETWEEN  1 AND  3 
            THEN N'BOQ ' + DATENAME(year, @Date) + N'-Q1'
            WHEN MONTH(@Date) BETWEEN  4 AND  6 
            THEN N'BOQ ' + DATENAME(year, @Date) + N'-Q2' 
            WHEN MONTH(@Date) BETWEEN  7 AND  9 
            THEN N'BOQ ' + DATENAME(year, @Date) + N'-Q3'
            WHEN MONTH(@Date) BETWEEN 10 AND 12 
            THEN N'BOQ ' + DATENAME(year, @Date) + N'-Q4' 
        END                                              AS [Beginning of Quarter Label Short]

     , CASE WHEN DATEPART(month, @Date) < 7                                             
            THEN N'Beginning of Half Year ' + DATENAME(year, @Date) + N'-H1'
            ELSE N'Beginning of Half Year ' + DATENAME(year, @Date) + N'-H2'
        END                                              AS [Beginning of Half Year Label]     -- Beginning of Half Year 2013-H1
     , CASE WHEN DATEPART(month, @Date) < 7                                             
            THEN N'BOH ' + DATENAME(year, @Date) + N'-H1'
            ELSE N'BOH ' + DATENAME(year, @Date) + N'-H2'
        END                                              AS [Beginning of Half Year Label Short] -- BOH 2013-H1
     , N'Beginning of Year ' + DATENAME(year, @Date)     AS [Beginning of Year Label]          -- Beginning of Year 2013
     , N'BOY ' + DATENAME(year, @Date)                   AS [Beginning of Year Label Short]    -- BOY 2013
     , DATENAME(month, @Date) + N' '                                                           
       + DATENAME(day, @Date) + N', '                                                          
       + DATENAME(year, @Date)                           AS [Calendar Day Label]               -- January 1, 2013
     , SUBSTRING(DATENAME(month, @Date), 1, 3) + N' '                                          
       + DATENAME(day, @Date) + N', '                                                          
       + DATENAME(year, @Date)                           AS [Calendar Day Label Short]         -- Jan 1, 2013
     , DATEPART(week, @Date)                             AS [Calendar Week Number]             -- 1
     , N'CY' + DATENAME(year, @Date)
       + '-W' + RIGHT(N'00' + DATENAME(week, @Date), 2)  AS [Calendar Week Label]              -- CY2013-W1
     , MONTH(@Date)                                      AS [Calendar Month Number]            -- 1 (to 12)
     , N'CY' + DATENAME(year, @Date)                                                           
       + N'-' + SUBSTRING(DATENAME(month, @Date), 1, 3)  AS [Calendar Month Label]             -- CY2013-Jan
     , SUBSTRING(DATENAME(month, @Date), 1, 3)                                                 
       + N'-' + DATENAME(year, @Date)                    AS [Calendar Month Year Label]        -- Jan-2013
     , DATEPART(quarter, @Date)                          AS [Calendar Quarter Number]          -- 1 (to 4)
     , N'CY' + DATENAME(year, @Date)                                                           
       + N'-Q' + DATENAME(quarter, @Date)                AS [Calendar Quarter Label]           -- CY2013-Q1
     , N'Q' + DATENAME(quarter, @Date)                                                         
       + N'-' + DATENAME(year, @Date)                    AS [Calendar Quarter Year Label]      -- CY2013-Q1
     , CASE WHEN DATEPART(month, @Date) < 7                                                    
            THEN 1                                                                             
            ELSE 2                                                                             
        END                                              AS [Calendar Half of Year Number]     -- 1 (to 2)
     , N'CY' + DATENAME(year, @Date)
       + N'-H' + CASE WHEN DATEPART(month, @Date) < 7
                      THEN N'1'
                      ELSE N'2'
                  END                                    AS [Calendar Half of Year Label]      -- CY2013-H1
     , N'H' + CASE WHEN DATEPART(month, @Date) < 7
                   THEN N'1'
                   ELSE N'2'
               END
       + N'-' + DATENAME(year, @Date)                    AS [Calendar Year Half of Year Label] -- H1-2013
     , YEAR(@Date)                                       AS [Calendar Year]                    -- 2013
     , N'CY' + DATENAME(year, @Date)                     AS [Calendar Year Label]              -- CY2013
     , CASE WHEN MONTH(@Date) > 6
            THEN MONTH(@Date) - 6
            ELSE MONTH(@Date) + 6
        END                                              AS [Fiscal Month Number]              -- 7
     , CAST(N'FY' + CAST(CASE WHEN MONTH(@Date) > 6
                              THEN YEAR(@Date) + 1
                              ELSE YEAR(@Date)
                          END AS NVARCHAR(4)
                        ) 
           + N'-' 
           + SUBSTRING(DATENAME(month, @Date), 1, 3) 
           AS NVARCHAR(20)
           )                                             AS [Fiscal Month Label]               -- FY2013-Jan
     , CASE WHEN MONTH(@Date) > 6 
            THEN DATEPART(quarter, @Date) - 2
            ELSE DATEPART(quarter, @Date) + 2 
        END                                              AS [Fiscal Quarter Number]            -- 2
     , N'FY' + CAST(CASE WHEN MONTH(@Date) > 6
                         THEN YEAR(@Date) + 1
                         ELSE YEAR(@Date)
                     END AS NVARCHAR(4))
       + N'-Q' 
       + CASE WHEN MONTH(@Date) > 6 
              THEN CAST(DATEPART(quarter, @Date) - 2 
                        AS NVARCHAR(2)
                       )
              ELSE CAST(DATEPART(quarter, @Date) + 2 
                        AS NVARCHAR(2)
                       )
          END                                            AS [Fiscal Quarter Label]             -- FY2013-Q2
     , CASE WHEN MONTH(@Date) > 6 THEN 1 ELSE 2 END      AS [Fiscal Half of Year Number]       -- 1 (to 2)
     , N'FY' + CAST(CASE WHEN MONTH(@Date) > 6
                         THEN YEAR(@Date) + 1
                         ELSE YEAR(@Date)
                     END AS NVARCHAR(4))
       + N'-H' 
       + CASE WHEN MONTH(@Date) > 6 
              THEN N'1' 
              ELSE N'2' 
          END                                            AS [Fiscal Half of Year Label]        -- FY2013-H2
     , CASE WHEN MONTH(@Date) > 6
            THEN YEAR(@Date) + 1
            ELSE YEAR(@Date)
        END                                              AS [Fiscal Year]                      -- 2013
     , N'FY' + CAST(CASE WHEN MONTH(@Date) > 6                                                 
                         THEN YEAR(@Date) + 1                                                  
                         ELSE YEAR(@Date)                                                      
                     END AS NVARCHAR(4))                 AS [Fiscal Year Label]                -- FY2013
     , YEAR(@Date) * 10000                                                                     
       + MONTH(@Date) * 100 + DAY(@Date)                 AS [Date Key]                         -- 20130101 (to 20131231)          
     , YEAR(@Date) * 100 + DATEPART(week, @Date)         AS [Year Week Key]                    -- 201301 (to 201353)
     , YEAR(@Date) * 100                                                                       
       + MONTH(@Date)                                    AS [Year Month Key]                   -- 201301 (to 201312)
     , YEAR(@Date) * 10                                                                        
       + DATEPART(quarter, @Date)                        AS [Year Quarter Key]                 -- 20131  (to 20134)
     , YEAR(@Date) * 10                                                                        
       + CASE WHEN DATEPART(month, @Date) < 7                                                  
              THEN 1                                                                           
              ELSE 2                                                                           
          END                                            AS [Year Half of Year Key]            -- 20131  (to 20132)
     , YEAR(@Date)                                       AS [Year Key]                         -- 2013
     , CASE WHEN MONTH(@Date) > 6
            THEN (YEAR(@Date) + 1) * 100                                                                     
                  + MONTH(@Date)
            ELSE YEAR(@Date) * 100
                  + MONTH(@Date)                   
        END                                              AS [Fiscal Year Month Key]            -- 201301 (to 201312)
     , (YEAR(@Date) * 10000) + (MONTH(@Date) * 100) + 1  AS [Beginning of Month Key]           -- 20130101
     , CASE WHEN MONTH(@Date) BETWEEN  1 AND  3 
            THEN (YEAR(@Date) * 10000) + 0101
            WHEN MONTH(@Date) BETWEEN  4 AND  6 
            THEN (YEAR(@Date) * 10000) + 0401
            WHEN MONTH(@Date) BETWEEN  7 AND  9 
            THEN (YEAR(@Date) * 10000) + 0701
            WHEN MONTH(@Date) BETWEEN 10 AND 12 
            THEN (YEAR(@Date) * 10000) + 1001
        END                                              AS [Beginning of Quarter Key]         -- 20130101

     , CASE WHEN DATEPART(month, @Date) < 7                                             
            THEN (YEAR(@Date) * 10000) + 0101
            ELSE (YEAR(@Date) * 10000) + 0701
        END                                              AS [Beginning of Half of Year Key]
     , (YEAR(@Date) * 10000) + 0101                      AS [Beginning of Year Key]            -- 20130101
     , CASE WHEN MONTH(@Date) > 6
            THEN ((YEAR(@Date) + 1 ) * 10) 
                 + DATEPART(quarter, @Date) - 2
            ELSE (YEAR(@Date) * 10) 
                 + DATEPART(quarter, @Date) + 2
        END                                              AS [Fiscal Year Quarter Key]          -- 20131
     , CASE WHEN MONTH(@Date) > 6
            THEN ((YEAR(@Date) + 1 ) * 10) + 1
            ELSE (YEAR(@Date) * 10) + 2
        END                                              AS [Fiscal Year Half of Year Key]     -- 20131
     , DATEPART(ISO_WEEK, @Date)                         AS [ISO Week Number]                  -- 1
     ;

     ------------------------------------------------------------------------------------------------------------