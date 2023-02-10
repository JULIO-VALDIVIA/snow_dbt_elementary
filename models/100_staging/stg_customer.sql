WITH SRC_DATA AS (
    SELECT * FROM {{ source('src_snow_data', 'CUSTOMER') }}
)
SELECT * FROM SRC_DATA
