SELECT
    date_key,
    year,
    month,
    day
FROM {{ source('retail', 'dim_date') }}
