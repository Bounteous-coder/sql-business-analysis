-- Purpose: quick KPI snapshot for stakeholders
SELECT
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(*) AS total_orders,
    ROUND(CAST(SUM(total_amount) AS NUMERIC), 2) AS gross_revenue,
    ROUND(CAST(AVG(total_amount) AS NUMERIC), 2) AS avg_order_value
FROM orders;
