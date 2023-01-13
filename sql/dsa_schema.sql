USE DW_GlobalTech
GO

CREATE SCHEMA dsa
GO

CREATE TABLE [dsa].[contacts](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[phone] [varchar](20) NULL,
	[customer_id] [int] NULL)

CREATE TABLE [dsa].[countries](
	[country_id] [char](2) NOT NULL,
	[country_name] [varchar](40) NOT NULL,
	[region_id] [int] NULL)

CREATE TABLE [dsa].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[address] [varchar](255) NULL,
	[website] [varchar](255) NULL,
	[credit_limit] [decimal](8, 2) NULL)

CREATE TABLE [dsa].[employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[hire_date] [datetime] NOT NULL,
	[manager_id] [int] NULL,
	[job_title] [varchar](255) NOT NULL)

CREATE TABLE [dsa].[inventories](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[warehouse_id] [int] NOT NULL,
	[quantity] [int] NOT NULL)

CREATE TABLE [dsa].[locations](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NOT NULL,
	[postal_code] [varchar](20) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country_id] [char](2) NULL)

CREATE TABLE [dsa].[order_items](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [bigint] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [decimal](8, 2) NOT NULL,
	[unit_price] [decimal](8, 2) NOT NULL)

CREATE TABLE [dsa].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[status] [varchar](20) NOT NULL,
	[salesman_id] [int] NULL,
	[order_date] [datetime] NOT NULL,
	[shipped_date] [datetime] NULL,
	[canceled_date] [datetime] NULL,
	[limit_payment_date] [datetime] NULL)

CREATE TABLE [dsa].[payment_methods](
	[method_id] [int] IDENTITY(1,1) NOT NULL,
	[method] [varchar](20) NOT NULL)

CREATE TABLE [dsa].[payments](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[method_id] [int] NOT NULL,
	[payment_date] [datetime] NOT NULL,
	[value] [decimal](8, 2) NOT NULL)

CREATE TABLE [dsa].[product_categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NOT NULL)

CREATE TABLE [dsa].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[description] [varchar](2000) NULL,
	[standard_cost] [decimal](9, 2) NULL,
	[list_price] [decimal](9, 2) NULL,
	[category_id] [int] NOT NULL)

CREATE TABLE [dsa].[regions](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[region_name] [varchar](50) NOT NULL)

CREATE TABLE [dsa].[warehouses](
	[warehouse_id] [int] IDENTITY(1,1) NOT NULL,
	[warehouse_name] [varchar](255) NULL,
	[location_id] [int] NULL)