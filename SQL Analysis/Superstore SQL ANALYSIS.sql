/* Revenue by category */
SELECT category, SUM(sales) AS total_sales
FROM SampleSuperstore
GROUP BY category
ORDER BY total_sales DESC;
/* profit by sub-category */
SELECT sub_category, SUM(profit) AS total_profit
FROM SampleSuperstore
GROUP BY sub_category
ORDER BY total_profit ASC;
/* sales vs profit by sub-category */
SELECT sub_category, 
       SUM(sales) AS total_sales, 
       SUM(profit) AS total_profit
FROM SampleSuperstore
GROUP BY sub_category
ORDER BY total_sales DESC;
/* Discount analysis (root cause analysis) */
SELECT discount, SUM(profit) AS total_profit
FROM SampleSuperstore
GROUP BY discount
ORDER BY discount;
/* segment analysis */
SELECT segment, 
       SUM(sales) AS total_sales, 
       SUM(profit) AS total_profit
FROM SampleSuperstore
GROUP BY segment;
/* Discount range analysis */
SELECT 
    CASE 
        WHEN discount <= 0.2 THEN 'Low'
        WHEN discount <= 0.5 THEN 'Medium'
        ELSE 'High'
    END AS discount_range,
    SUM(profit) AS total_profit
FROM SampleSuperstore
GROUP BY 
    CASE 
        WHEN discount <= 0.2 THEN 'Low'
        WHEN discount <= 0.5 THEN 'Medium'
        ELSE 'High'
    END;