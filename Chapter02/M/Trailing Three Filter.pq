let
//Trailing Three Year Date Values
    CurrentDate = DateTime.Date(DateTime.LocalNow()),
    StartYear = Date.Year(CurrentDate)-3,
    StartDate = #date(StartYear,1,1), 
//Reseller Sales View
    Source = AdWorksSQLServer,
    ResellerSales = Source{[Schema = "BI", Item = "vFact_ResellerSales"]}[Data], 
//Trailing Three Year Filter
    FilterResellerSales = 
        Table.SelectRows(ResellerSales, each [Order Date] >= StartDate and [Order Date] <= CurrentDate)
in
    FilterResellerSales