/*
Filter context example
*/

Use AdventureworksDW;
GO

SELECT
	P.[Product Category]
,	C.[Customer Marital Status]
,	FORMAT(SUM(F.[Unit Price] * F.[Order Quantity]), '$#,###') AS [Internet Gross Sales]
FROM
BI.vFact_InternetSales as F
	INNER JOIN BI.vDim_FinDate as D on F.[Order Date Key]= D.[Date Key]
	INNER JOIN BI.vDim_Promotion as Promo on F.[Promotion Key] = Promo.[Promotion Key]
	INNER JOIN BI.vDim_Product as P on F.[Product Key] = P.[Product Key]
	INNER JOIN BI.vDim_Customer as C on F.[Customer Key]  = C.[Customer Key]
	INNER JOIN BI.vDim_SalesTerritory as S on F.[Sales Territory Key] = S.[Sales Territory Key]
WHERE 
	D.[Calendar Year Status] in ('Prior Calendar Year', 'Current Calendar Year')
	and
	S.[Sales Territory Group] = 'Europe'
	and
	Promo.[Promotion Type] in ('Excess Inventory', 'Volume Discount')
GROUP BY 
	P.[Product Category], C.[Customer Marital Status]
ORDER BY [Product Category];