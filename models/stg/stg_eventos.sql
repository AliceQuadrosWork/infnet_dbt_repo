{{ config(
    materialized='view',
    bind=false
) }}

SELECT
    *
FROM {{ source('bronze', 'eventos') }}
WHERE "timestamp" > cast('2026-01-01' as timestamp)