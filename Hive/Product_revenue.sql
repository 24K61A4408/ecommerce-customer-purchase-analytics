SELECT
    product_name,
    SUM(total_amount) AS revenue
FROM ecommerce_transactions
GROUP BY product_name
ORDER BY revenue DESC;
