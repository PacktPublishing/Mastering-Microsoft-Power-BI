let
    SubCats = Table.SelectColumns(Product, {"Product Subcategory"}),
    DistinctSubCats = Table.Distinct(SubCats)
in    
    DistinctSubCats