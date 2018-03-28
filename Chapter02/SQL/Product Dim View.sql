/*
Database: AdventureWorksDW
View: BI.vDim_Product
*/

SELECT
	P.ProductKey as 'Product Key'
,	P.Class AS 'Product Class'
,	p.Color as 'Product Color'
,	p.DaysToManufacture as 'Product Days to Manufacture'
,	p.DealerPrice as 'Product Dealer Price'
,	cast(p.StartDate as date) as 'Product Start Date'
,	cast(p.EndDate as date) as 'Product End Date'
,	p.EnglishDescription as 'Product Description'
,	p.EnglishProductName as 'Product Name'
,	case p.FinishedGoodsFlag
	When 1 then 'Finished Product'
	When 0 then 'Not Finished Product'
	Else 'Unknown'
	End as 'Product Finished Goods Indicator'
,	p.ListPrice as 'Product List Price'
,	p.ModelName as 'Product Model'
,	p.Weight as 'Product Weight'
,	p.Style as 'Product Style'
,	p.StandardCost as 'Product Standard Cost'
,	p.ProductLine as 'Product Line'
,	p.Status as 'Product Status'
,	p.SafetyStockLevel as 'Product Safety Stock Level'
,
ISNULL(S.EnglishProductSubcategoryName, 'Undefined') 'Product Subcategory'
,	
ISNULL(C.EnglishProductCategoryName, 'Undefined') AS 'Product Category'
,	CASE 
	WHEN C.EnglishProductCategoryName = 'Bikes' THEN 'Bikes' 
	WHEN C.EnglishProductCategoryName IS NULL THEN NULL
	ELSE 'Non-Bikes'
	END AS 'Product Category Group'
,	P.ProductAlternateKey as 'Product Alternate Key'
FROM
DBO.DimProduct AS P
LEFT JOIN DBO.DimProductSubcategory AS S 
ON P.ProductSubcategoryKey = S.ProductSubcategoryKey
LEFT JOIN DBO.DimProductCategory AS C
ON S.ProductCategoryKey = C.ProductCategoryKey;


