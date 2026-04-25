-- Krok 1: Definiujemy listę kolorów na górze pliku
{% set wybrane_kolory = ['Czerwony', 'Czarny', 'Srebrny'] %}

{{ config(materialized='view') }}

select 
    p.`Marka pojazdu`,
    
    -- Krok 2: dbt samo wygeneruje odpowiedniego SQL-a dla każdego koloru
    {% for kolor in wybrane_kolory %}
        sum(case when k.kolor = '{{ kolor }}' then 1 else 0 end) as ilosc_aut_{{ kolor | lower }}
        
        -- Magia: dbt samo wie, kiedy nie stawiać przecinka po ostatniej kolumnie!
        {% if not loop.last %} , {% endif %}
    {% endfor %}

from {{ source('baza_szkoleniowa', 'pojazdy') }} as p
join {{ source('baza_szkoleniowa', 'kolory') }} as k on k.id = p.id_koloru
group by 1