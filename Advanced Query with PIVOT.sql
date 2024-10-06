SELECT *
FROM (
    SELECT SalespersonID, YEAR(SaleDate) AS SaleYear, TotalAmount
    FROM Sales
) SourceTable
PIVOT (
    SUM(TotalAmount) 
    FOR SaleYear IN ([2022], [2023], [2024])
) AS PivotTable;
