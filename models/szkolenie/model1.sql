{{ config(materialized='view') }}

SELECT 
    1 as id,
    'Szkolenie dbt' as nazwa,
    CURRENT_TIMESTAMP() as data_utworzenia