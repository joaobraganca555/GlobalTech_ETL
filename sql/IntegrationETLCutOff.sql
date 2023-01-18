-- Deve ser criado na fonte
USE DW_GlobalTech
GO

CREATE SCHEMA Integration
GO

CREATE PROCEDURE [Integration].[GetLastETLCutoffTime]
AS
BEGIN
SET NOCOUNT ON;
SET XACT_ABORT ON;
SELECT [cutOff] AS CutoffTime
FROM Integration.[ETL_Cutoffs]
WHERE cutOff = (SELECT MAX([cutOff])
FROM Integration.[ETL_Cutoffs])
RETURN 0;
END;

GO

CREATE TABLE [Integration].[ETL_Cutoffs](
[id] [int] IDENTITY(1,1) NOT NULL,
[cutOff] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
))
