SELECT
    customer_id,
    COUNT(*) AS purchase_count,
    SUM(total_amount) AS total_spent,
    AVG(total_amount) AS average_purchase
FROM ecommerce_transactions
GROUP BY customer_id
ORDER BY total_spent DESC;
