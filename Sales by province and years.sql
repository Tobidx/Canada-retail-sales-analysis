-- SALES BY PROVINCE AND YEARS
SELECT 
    GEO AS province,
     SUBSTRING(REF_DATE, 1, 4) AS year,
    SUM(VALUE) AS total_sales
FROM 
    Retail_sales
GROUP BY 
    province, year
ORDER BY 
    year, total_sales DESC;
