{{ config(materialized='table') }}

select `Marka pojazdu`,Cena ,kolor, rocznik,`Typ nadwozia`,lokalizacja,`Skrzynia biegow` 
from {{ ref('e_all_data')}}