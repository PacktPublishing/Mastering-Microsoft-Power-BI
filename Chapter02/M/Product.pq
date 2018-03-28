/*
   Updated: 2/25/2018 (Brett Powell)
    Added Product Color-Class Column via ColorClass variable
*/
let
    Source = AdWorksSQLServer,
    Product = Source{[Schema = "BI", Item = "vDim_Product"]}[Data],
    ColorClass = 
      Table.AddColumn(Product, "Product Color-Class", each 
        [Product Color] & "-" & [Product Class], type text)
in
    ColorClass