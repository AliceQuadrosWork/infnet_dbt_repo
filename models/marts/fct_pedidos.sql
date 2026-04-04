{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='pedido_id',
    dist='fornecedor_id',
    sort=['data_do_pedido']
) }}

SELECT
    *
FROM {{ ref('stg_at') }}