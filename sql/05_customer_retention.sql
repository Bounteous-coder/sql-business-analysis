-- Purpose: estimate retention based on repeat purchase behavior
WITH customer_orders AS (
    SELECT
        customer_id,
        CAST(DATE_TRUNC('month', order_date) AS DATE) AS order_month,
        COUNT(*) AS monthly_orders
    FROM orders
    GROUP BY customer_id, DATE_TRUNC('month', order_date)
),
first_order AS (
    SELECT
        customer_id,
        MIN(order_month) AS first_month
    FROM customer_orders
    GROUP BY customer_id
),
cohorts AS (
    SELECT
        fo.first_month,
        co.order_month,
        COUNT(DISTINCT co.customer_id) AS active_customers
    FROM first_order fo
    JOIN customer_orders co ON co.customer_id = fo.customer_id
    GROUP BY fo.first_month, co.order_month
)
SELECT
    first_month,
    order_month,
    active_customers,
    DENSE_RANK() OVER (PARTITION BY first_month ORDER BY order_month) - 1 AS month_number
FROM cohorts
ORDER BY first_month, order_month;
