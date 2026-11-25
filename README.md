# Sales Performance Dashboard — Apex Lark Day 13

## Project objective
Build an interactive Power BI dashboard to monitor sales, profit, orders, customers, and product performance.

## Important files
- `DAX_Measures.dax` — required KPI measures plus optional Average Order Value.
- `Power_Query_Template.pq` — starter Power Query transformation script.
- `Business_Insights_Template.md` — one-page report structure to complete after analyzing the real dataset.

## Expected dataset fields
The starter measures assume a table named `Orders` with these columns:
`Sales`, `Profit`, `Order ID`, `Customer ID`, `Quantity`, `Order Date`,
`Region`, `Category`, `Product Name`, `Segment`, `State`, and `City`.

If your dataset uses different names, update the DAX and Power Query references.

## Dashboard layout
1. KPI cards: Total Sales, Total Profit, Total Orders, Profit Margin (%), Total Customers.
2. Line chart: Monthly Sales Trend.
3. Clustered column chart: Sales by Region.
4. Bar chart: Profit by Category.
5. Bar chart: Top 10 Products by Sales (apply a Top N = 10 visual filter).
6. Donut chart: Sales by Customer Segment.
7. Map: Revenue by State/City, only if valid location fields are present.
8. Slicers: Region, Category, Segment, and Order Date.

## Suggested build sequence
1. Import the Excel dataset into Power BI Desktop.
2. Clean duplicates, nulls, text values, and data types in Power Query.
3. Create relationships if the dataset contains multiple tables. Prefer one-to-many dimension-to-fact relationships and single-direction filtering unless the model requires otherwise.
4. Create the measures in `DAX_Measures.dax`.
5. Build the visuals and slicers listed above.
6. Test that slicers cross-filter all relevant visuals.
7. Save the report as `Sales_Performance_Dashboard.pbix`.
8. Export dashboard screenshots and complete the business insights report.

## Important
This starter pack does not contain a sales dataset or a finished `.pbix` file. Actual rankings, totals, insights, and screenshots must be generated from the supplied dataset in Power BI. Do not submit placeholder insights as factual findings.
