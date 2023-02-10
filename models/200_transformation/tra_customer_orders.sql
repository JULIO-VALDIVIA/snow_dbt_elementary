WITH

CUSTOMERS AS (
    SELECT * FROM {{ ref('stg_customer') }}
),
ORDERS AS (
    SELECT * FROM {{ ref('stg_orders') }}
),
FINAL AS (
    SELECT * 
    FROM CUSTOMERS A 
    INNER JOIN ORDERS B ON A.C_CUSTKEY = B.O_CUSTKEY
)
SELECT * FROM FINAl