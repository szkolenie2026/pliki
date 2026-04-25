{% macro przelicz_na_EURO(wartosc, kurs=4.39) %}
    
    -- Zwracamy zaokrąglony wynik dzielenia
    ROUND({{ wartosc }} / {{ kurs }}, 2)

{% endmacro %}