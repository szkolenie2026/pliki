{{ config(materialized='view') }}

select p.`Marka pojazdu`,p.Cena ,k.kolor from `szkolenie`.pojazdy as p
join `szkolenie`.kolory as k on k.id = p.id_koloru