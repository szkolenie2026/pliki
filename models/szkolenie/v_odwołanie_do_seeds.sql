{{ config(materialized='view') }}

select p.`Marka pojazdu`,p.Cena ,k.kolor 
from {{ ref('pojazdy')}} as p
join {{ ref('kolory')}}  as k on k.id = p.id_koloru
