{{ config(materialized='view') }}

select 
    p.`Marka pojazdu`,
    p.Cena,
    k.kolor 
from {{ source('baza_szkoleniowa', 'pojazdy') }} as p
join {{ source('baza_szkoleniowa', 'kolory') }} as k on k.id = p.id_koloru

{% if target.name == 'dev' %}
    -- Ta linijka doklei się do SQL-a TYLKO, gdy testujecie to ręcznie.
    -- W nocy na produkcji (target.name == 'prod') dbt zignoruje ten blok!
    limit 100
{% endif %}