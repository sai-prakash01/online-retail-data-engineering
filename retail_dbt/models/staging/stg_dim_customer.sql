SELECT
    customer_id,
    country
FROM {{ source('retail', 'dim_customer') }}
WHERE customer_id IS NOT NULL
