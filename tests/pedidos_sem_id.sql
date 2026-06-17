SELECT *
FROM {{ ref('stg_clientes') }}
WHERE pedido_id IS NULL