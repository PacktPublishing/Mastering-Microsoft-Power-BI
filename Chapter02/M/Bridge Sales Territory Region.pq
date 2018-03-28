let
    Regions = Table.SelectColumns(#"Sales Territory", "Sales Territory Region"),
    DistinctRegions = Table.Distinct(Regions)
in
    DistinctRegions