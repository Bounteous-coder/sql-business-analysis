-- Purpose: identify top-performing customer segments
SELECT
    c.segment,
    COUNT(o.order_id) AS order_count,
    ROUND(CAST(SUM(o.total_amount) AS NUMERIC), 2) AS segment_revenue,
    ROUND(CAST(AVG(o.total_amount) AS NUMERIC), 2) AS segment_avg_order
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY segment_revenue DESC;
