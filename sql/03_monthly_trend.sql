-- Purpose: trend revenue and orders over time
SELECT
    CAST(DATE_TRUNC('month', order_date) AS DATE) AS month,
    COUNT(*) AS orders,
    ROUND(CAST(SUM(total_amount) AS NUMERIC), 2) AS revenue
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;
