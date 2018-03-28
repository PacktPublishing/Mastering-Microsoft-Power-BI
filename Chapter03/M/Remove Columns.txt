let
    Source = AdWorksSQLServer,
    ResellerSales = Source{[Schema = "BI", Item = "vFact_ResellerSales"]}[Data],
    RemoveColumns = Table.RemoveColumns(ResellerSales,
            {"Extended Amount", "Total Product Cost", "Sales Amount"})
in
    RemoveColumns