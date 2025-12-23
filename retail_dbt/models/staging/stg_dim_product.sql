SELECT
    product_id,
    product_name
FROM {{ source('retail', 'dim_product') }}
