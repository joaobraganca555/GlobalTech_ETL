USE GlobalTech

-- Temporal tabel for Employee (manager)

ALTER TABLE dbo.employees
ADD
SysStartTime DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
CONSTRAINT DF_SysStart DEFAULT SYSUTCDATETIME()
, SysEndTime DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
CONSTRAINT DF_SysEnd DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
PERIOD FOR SYSTEM_TIME (SysStartTime, SysEndTime);
GO

CREATE SCHEMA History
GO

ALTER TABLE employees
SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.employees));
GO


-- Temporal tabel for Locations (address)

ALTER TABLE dbo.locations
ADD
SysStartTime DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
CONSTRAINT DF_SysStart_Locations DEFAULT SYSUTCDATETIME()
, SysEndTime DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
CONSTRAINT DF_SysEnd_Locations DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
PERIOD FOR SYSTEM_TIME (SysStartTime, SysEndTime);
GO

ALTER TABLE locations
SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.locations));
GO