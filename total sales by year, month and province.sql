-- TOTAL SALES BY YEAR, MONTH, PROVINCE

SELECT 
GEO AS Province,
     SUBSTRING(REF_DATE, 1, 4) AS year,
      SUBSTRING(REF_DATE, 6, 12) AS month,
    SUM(VALUE) AS total_sales
FROM 
    Retail_sales
GROUP BY 
   Province, year, month
ORDER BY 
    year, month;
