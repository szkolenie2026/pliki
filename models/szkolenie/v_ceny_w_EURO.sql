{{ config(materialized='view') }}

SELECT
    cena,
    -- Użycie z domyślnym kursem
    {{ przelicz_na_EURO('cena') }} AS cena_EURO1,
    
    -- Użycie z niestandardowym kursem
    {{ przelicz_na_EURO('cena', 3.54) }} AS cena_EURO2

from {{ source('baza_szkoleniowa', 'pojazdy') }} 