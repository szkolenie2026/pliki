{{ config(materialized='incremental') }}

SELECT
    data,
    `Oznaczenie kosztu`,
    wartosc
FROM szkolenie.budzet 
where data >= '2025-01-01'

{% if is_incremental() %}

  -- Ta część kodu wykona się TYLKO wtedy, 
  -- gdy tabela już istnieje w BigQuery i robimy zwykły "dbt run"
  --WHERE
   AND data > (SELECT max(data) FROM {{ this }})

{% endif %}