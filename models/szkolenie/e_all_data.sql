{{ config(materialized='ephemeral') }}

select *
from szkolenie.pojazdy as p
left join szkolenie.kolory  as k  on k.id = p.id_koloru
join szkolenie.nadwozie as n on n.id = p.ID_Typu_nadwozia
join szkolenie.skrzynie as s on s.id = p.`ID_Skrzyni_biegów`
join szkolenie.lokalizacja as l on l.id = p.ID_Lokalizacji