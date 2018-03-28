// 1) Retrieve record from table
// 2) Retrieve table from data field of record   
let
    Source = AdWorksSQLServer,
    AccountRecord = Source{[Name = "BI.vDim_Account"]},
    Account = AccountRecord[Data]
in
    Account