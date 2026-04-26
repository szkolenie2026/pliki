{{ config(materialized='view') }}

-- zakomentuj 1 wiersz i sprawdź czy VIEW jest domyślne.

SELECT 
    1 as id,
    'Szkolenie dbt' as nazwa,
    CURRENT_TIMESTAMP() as data_utworzenia