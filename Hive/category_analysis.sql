SELECT
    category,
    SUM(quantity) AS quantity_sold,
    SUM(total_amount) AS sales
FROM ecommerce_transactions
GROUP BY category
ORDER BY sales DESC;
