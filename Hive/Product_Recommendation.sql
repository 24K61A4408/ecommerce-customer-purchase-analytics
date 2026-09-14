SELECT
    a.product_name AS purchased_product,
    b.product_name AS recommended_product,
    COUNT(DISTINCT a.customer_id) AS recommendation_score
FROM ecommerce_transactions a
JOIN ecommerce_transactions b
ON a.customer_id = b.customer_id
AND a.product_id <> b.product_id
GROUP BY a.product_name, b.product_name
ORDER BY recommendation_score DESC;
