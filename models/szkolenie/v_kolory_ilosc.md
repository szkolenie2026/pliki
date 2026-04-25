{% docs v_kolory_ilosc %}
### 🧑‍💻 To jest przykład użycia w Jinja: 
**zmiennych**
 ```
 {% raw %}
{% set wybrane_kolory = ['Czerwony', 'Czarny', 'Srebrny'] %}
```
**pętli**
 ``` 
 {% for kolor in wybrane_kolory %}
 {% endfor %}
 ```
 **bloków warunkowych**
 ``` 
 {% if not loop.last %} , {% endif %}
```
#### Pamiętaj o domykaniu klamer 
```
{% ... %}
{% endraw %}
```
#### ❗for kończymy endfor
#### ❗if kończymy endif
| Tag | Typ | 
| :--- | :--- |
| `set` | `zmienna` |
| `for` | `pętla` | 
| `if` | `warunki` |
{% enddocs %}