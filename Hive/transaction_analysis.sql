SELECT COUNT(*) AS total_transactions
FROM ecommerce_transactions;

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_transactions;

SELECT SUM(total_amount) AS total_sales
FROM ecommerce_transactions;
