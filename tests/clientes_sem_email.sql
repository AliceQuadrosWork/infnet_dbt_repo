SELECT *
FROM {{ ref('stg_clientes') }}
WHERE customer_email IS NULL
   OR TRIM(customer_email) = ''