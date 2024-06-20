WITH source AS (
    SELECT *

    FROM {{ source('thelook_ecommerce','products') }}
)

SELECT
    id AS products_id,
    cost,
    retail_price,
    department,
    brand
FROM source