-- TOTAL MONTHLY RETAIL SALES OVER TIME
SELECT 
    REF_DATE AS `Date`,
    SUM(VALUE) AS TotalSales
FROM 
    Retail_sales
GROUP BY 
    REF_DATE
ORDER BY 
    REF_DATE;