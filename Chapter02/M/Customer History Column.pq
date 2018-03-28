let
// Customer History Date Bands

   CurrentDate = DateTime.Date(DateTime.LocalNow()),
   OneYearAgo = Date.AddYears(CurrentDate,-1),
   TwoYearsAgo = Date.AddYears(CurrentDate,-2),
   ThreeYearsAgo = Date.AddYears(CurrentDate,-3),

//Customer Dimension

    Source = AdWorksSQLServer,
    Customer = Source{[Schema = "BI", Item = "vDim_Customer"]}[Data],
    CustomerHistoryColumn = Table.AddColumn(Customer, "Customer History Segment", 
    each
    if [Customer First Purchase Date] >= OneYearAgo then "First Year Customer" 
    else if [Customer First Purchase Date] >= TwoYearsAgo and [Customer First Purchase Date] < OneYearAgo then "Second Year Customer"
    else if [Customer First Purchase Date] >= ThreeYearsAgo and [Customer First Purchase Date] < TwoYearsAgo then "Third Year Customer" 
else "Legacy Customer",
type text)
in
    CustomerHistoryColumn