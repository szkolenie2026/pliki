{{ config(materialized='view') }}

select 
        ID_Koloru
from {{ ref('pojazdy') }} as p
left join {{ ref('kolory') }} as k on k.id = p.id_koloru