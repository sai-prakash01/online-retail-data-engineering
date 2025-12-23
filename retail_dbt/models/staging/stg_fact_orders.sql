SELECT
    invoice_no,
    product_id,
    customer_id,
    date_key,
    quantity,
    unit_price,
    total_amount
FROM {{ source('retail', 'fact_orders') }}
