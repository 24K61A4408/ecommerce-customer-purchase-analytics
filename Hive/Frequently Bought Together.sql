SELECT
    a.product_name AS product_1,
    b.product_name AS product_2,
    COUNT(DISTINCT a.customer_id) AS customers
FROM ecommerce_transactions a
JOIN ecommerce_transactions b
ON a.customer_id = b.customer_id
AND a.product_id < b.product_id
GROUP BY a.product_name, b.product_name
ORDER BY customers DESC;
