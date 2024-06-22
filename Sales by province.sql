-- SALES BY PROVINCE

SELECT GEO AS Province, SUM(VALUE) AS TotalSales FROM Retail_sales 
GROUP BY Province ORDER BY TotalSales DESC