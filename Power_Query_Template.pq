// Power Query template for the Excel sales table.
// In Power BI: Transform Data > Advanced Editor.
// Change the file path, sheet/table name, and column names to match your dataset.

let
    Source = Excel.Workbook(
        File.Contents("C:\\PATH\\TO\\YOUR\\SALES_DATA.xlsx"),
        null,
        true
    ),
    SalesData = Source{[Item="Orders", Kind="Table"]}[Data],
    PromotedHeaders = Table.PromoteHeaders(SalesData, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(
        PromotedHeaders,
        {
            {"Order Date", type date},
            {"Sales", type number},
            {"Profit", type number},
            {"Quantity", Int64.Type},
            {"Order ID", type text},
            {"Customer ID", type text},
            {"Region", type text},
            {"Category", type text},
            {"Product Name", type text},
            {"Segment", type text},
            {"State", type text},
            {"City", type text}
        }
    ),
    RemovedDuplicates = Table.Distinct(ChangedTypes),
    CleanedText = Table.TransformColumns(
        RemovedDuplicates,
        {
            {"Region", each if _ = null then "Unknown" else Text.Trim(_), type text},
            {"Category", each if _ = null then "Unknown" else Text.Trim(_), type text},
            {"Segment", each if _ = null then "Unknown" else Text.Trim(_), type text}
        }
    )
in
    CleanedText
