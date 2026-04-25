{{ config(materialized='table') }}

select p.`Marka pojazdu`,p.Cena ,k.kolor 
from {{ source( 'baza_szkoleniowa','pojazdy')}} as p
join {{ source( 'baza_szkoleniowa','kolory')}}  as k on k.id = p.id_koloru