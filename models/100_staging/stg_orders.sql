WITH SRC_DATA AS (
    SELECT * FROM {{ source('src_snow_data', 'ORDERS') }}
)
SELECT * FROM SRC_DATA
