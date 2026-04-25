{{ config(materialized='view') }}

SELECT 
    1 as id,
    'Szkolenie dbaat' as nazwa,
    CURRENT_TIMESTAMP() as data_utworzenia