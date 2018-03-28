let
    RefreshDateTime = DateTime.LocalNow(),
    TimeZoneOffset = -5,
    RefreshDateTimeAdjusted = RefreshDateTime + #duration(0,TimeZoneOffset,0,0),
    RefreshDateAdjusted = DateTime.Date(RefreshDateTimeAdjusted),
    TableCreate = Table.FromRecords({[CurrentDate = RefreshDateAdjusted]}),
    DateType = Table.TransformColumnTypes(TableCreate,{"CurrentDate", type date})
in
    DateType