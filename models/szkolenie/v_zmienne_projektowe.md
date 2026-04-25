{% docs v_zmienne_projektowe %}

## 🚗 Model: Ogłoszenia Motoryzacyjne (Filtrowane Regionalnie)

Ten model dbt generuje widok zawierający szczegółowe informacje o pojazdach. Dane są pobierane z modelu bazowego `e_all_data` i filtrowane na podstawie dynamicznej zmiennej lokalizacyjnej.

### 📝 Logika Biznesowa:
- **Materializacja:** `view` (widok) – dane są zawsze aktualne względem tabeli źródłowej.
- **Dynamiczne Filtrowanie:** Model wykorzystuje zmienną `wojewodztwo`. Jeśli nie zostanie podana inna wartość, system automatycznie filtruje dane dla lokalizacji zawierających frazę **"małopolskie"**.
- **Monitoring:** Podczas uruchamiania modelu, dbt generuje log informacyjny z aktualnie przetwarzanym regionem.

### 📋 Zestawienie Kolumn:

| Kolumna | Opis | Emoji |
| :--- | :--- | :--- |
| **Marka pojazdu** | Nazwa producenta samochodu (np. Toyota, BMW). | 🏎️ |
| **Cena** | Kwota sprzedaży wyrażona w walucie lokalnej. | 💰 |
| **kolor** | Kolor lakieru nadwozia. | 🎨 |
| **rocznik** | Rok produkcji pojazdu. | 📅 |
| **Typ nadwozia** | Kategoria sylwetki auta (np. Sedan, SUV, Kombi). | 🚐 |
| **lokalizacja** | Szczegółowe miejsce wystawienia ogłoszenia. | 📍 |
| **Skrzynia biegow** | Rodzaj przekładni (Manualna / Automatyczna). | ⚙️ |

---
**Uwaga techniczna:** Filtracja odbywa się za pomocą operatora `LIKE`, co pozwala na dopasowanie fragmentów tekstu w kolumnie lokalizacja.

{% enddocs %}