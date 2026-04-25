{% set woj = var('wojewodztwo', 'małopolskie')  %}
{{ log("LOG: Aktualnie przetwarzana lokalizacja to: " ~ woj, info=True) }}

{{ config(materialized='view') }}

select `Marka pojazdu`,Cena ,kolor, rocznik,`Typ nadwozia`,lokalizacja,`Skrzynia biegow` 
from {{ ref('e_all_data')}}
WHERE lokalizacja LIKE '%{{ woj }}%'
--WHERE lokalizacja LIKE '%{{ var('wojewodztwo', 'małopolskie') }}%'