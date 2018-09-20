USE [AdventureWorksDW]
GO

/****** Object:  View [BI].[vFact_InternetSales]    Script Date: 9/18/2018 1:51:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [BI].[vFact_InternetSales]
As
SELECT
	F.ProductKey as		[Product Key]
,	F.OrderDateKey as	[Order Date Key]
,	F.ShipDateKey as	[Ship Date Key]
,	F.CustomerKey as	[Customer Key]
,	F.CurrencyKey as	[Currency Key]
,	F.DueDateKey as		[Due Date Key]
,	F.PromotionKey as	[Promotion Key]
,	F.SalesTerritoryKey as [Sales Territory Key]
,	F.SalesAmount AS 'Sales Amount'
,	F.ExtendedAmount as 'Extended Amount'
,	F.Freight
,	F.OrderQuantity as 'Order Quantity'
,	F.DiscountAmount as 'Discount Amount'
,	F.TotalProductCost as 'Total Product Cost'
,	F.SalesOrderNumber as 'Sales Order Number'
,	F.SalesOrderLineNumber as [Sales Order Line Number]
,	F.TaxAmt as 'Tax Amount'
--,	f.OrderDate as 'Order Date'
--,	f.DueDate as 'Due Date'
--,	f.ShipDate as 'Ship Date'
,	F.UnitPrice as [Unit Price]
,	F.ProductStandardCost as [Product Standard Cost]
FROM 
dbo.FactInternetSales as F
WHERE
F.OrderDate BETWEEN DATEFROMPARTS (YEAR(DATEADD(YEAR,-3,CURRENT_TIMESTAMP)),1,1) AND CAST(CURRENT_TIMESTAMP AS date);
GO


