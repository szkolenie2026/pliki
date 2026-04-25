{{ config(materialized='view') }}

select `Marka pojazdu`, kolor, SUM(cena) as suma_cen, COUNT(*) as ile
from szkolenie.pojazdy as p
left join szkolenie.kolory  as k  on k.id = p.id_koloru
GROUP BY 1,2