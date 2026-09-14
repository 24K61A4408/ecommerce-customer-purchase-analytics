INSERT OVERWRITE DIRECTORY '/ecommerce/output/recommendations'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT
    a.product_name,
    b.product_name,
    COUNT(DISTINCT a.customer_id)
FROM ecommerce_transactions a
JOIN ecommerce_transactions b
ON a.customer_id = b.customer_id
AND a.product_id <> b.product_id
GROUP BY a.product_name, b.product_name
ORDER BY COUNT(DISTINCT a.customer_id) DESC;
