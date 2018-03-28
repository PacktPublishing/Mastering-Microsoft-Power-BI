let
    Source = AdWorksSQLServer,
    Sales = Source{[Schema = "BI", Item = "vFact_InternetSales"]}[Data],
    TypeChanges = Table.TransformColumnTypes(Sales,
            {
                {"Discount Amount", Int64.Type}, // Whole Number 
                {"Sales Amount", Currency.Type}, // Fixed Decimal Number
                {"Extended Amount", type number} // Decimal Number
            })
in
    TypeChanges