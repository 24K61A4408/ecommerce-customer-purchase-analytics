SELECT
    customer_id,
    SUM(total_amount) AS total_spent,
    CASE
        WHEN SUM(total_amount) >= 50000 THEN 'High Value'
        WHEN SUM(total_amount) >= 20000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM ecommerce_transactions
GROUP BY customer_id
ORDER BY total_spent DESC;
