{{ config(
    materialized='view',
    bind=false
) }}

SELECT
    id_pedido,
    {{ clean_string('status') }} as status,
    valor,
    data_pedido
FROM {{ source('bronze', 'at') }}