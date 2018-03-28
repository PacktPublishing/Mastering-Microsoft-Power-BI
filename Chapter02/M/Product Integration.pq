let
    Source = AdWorksSQLServer,
//Product Dimension Tables
    Product = Source{[Schema = "BI", Item = "vDim_Products"]}[Data],
    ProductSubCat = Source{[Schema = "BI", Item = "vDim_ProductSubcategory"]}[Data],   
    ProductCat = Source{[Schema = "BI", Item = "vDim_ProductCategory"]}[Data],
//Product Outer Joins    
    ProductJoinSubCat = Table.NestedJoin(Product,"ProductSubcategoryKey",ProductSubCat,"ProductSubcategoryKey","ProductSubCatTableCol",JoinKind.LeftOuter),
    ProductJoinSubCatCol = Table.ExpandTableColumn(ProductJoinSubCat,"ProductSubCatTableCol",{"EnglishProductSubcategoryName","ProductCategoryKey"},{"Product Subcategory", "ProductCategoryKey"}),

    ProductJoinCat = Table.NestedJoin(ProductJoinSubCatCol,"ProductCategoryKey",ProductCat,"ProductCategoryKey","ProductCatTableCol",JoinKind.LeftOuter),
    ProductJoinCatCol = Table.ExpandTableColumn(ProductJoinCat,"ProductCatTableCol",{"EnglishProductCategoryName"},{"Product Category"}),
//Select and Rename Columns
    ProductDimCols = Table.SelectColumns(ProductJoinCatCol,{"ProductKey","ProductAlternateKey","EnglishProductName","Product Subcategory","Product Category"}),
    ProductDimRenameCols = Table.RenameColumns(ProductDimCols,{
        {"ProductKey", "Product Key"},{"ProductAlternateKey","Product Alternate Key"},{"EnglishProductName","Product Name"}
    }),
//Product Category Group Column
    ProductCatGroupCol = Table.AddColumn(ProductDimRenameCols,"Product Category Group", each 
        if [Product Category] = "Bikes" then "Bikes"
        else if [Product Category] = null then "Undefined"
        else "Non-Bikes"
,type text),

//Remove Null Values    
    UndefinedCatAndSubcat = Table.ReplaceValue(ProductCatGroupCol,null,"Undefined",Replacer.ReplaceValue,{"Product Subcategory","Product Category"})
in
    UndefinedCatAndSubcat