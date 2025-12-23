SELECT
    c.country,
    SUM(f.total_amount) AS total_revenue
FROM {{ ref('stg_fact_orders') }} f
JOIN {{ ref('stg_dim_customer') }} c
  ON f.customer_id = c.customer_id
GROUP BY c.country
