-- Purpose: reveal products driving the most revenue
SELECT
    p.product_name,
    SUM(oi.quantity) AS units_sold,
    ROUND(CAST(SUM(oi.quantity * oi.unit_price) AS NUMERIC), 2) AS product_revenue
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY product_revenue DESC
LIMIT 10;
