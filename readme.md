# Retail Sales Analysis — Set A

**Student:** Mayur Makwana
**Student ID:** 11391

**Video Link (Google Drive):**
https://drive.google.com/file/d/1WTzt21a59AQPrQ0SNECbcdCrHaXNvWvP/view?usp=drive_link

**Duration:** 8–9 minutes

## Objective

Which service type has the greatest delivery-delay burden, and which hub needs priority attention?


## Dataset & Cleaning

* `deliveries.csv` — 13 rows; 1 duplicate row was removed.
* `routes.csv` — Route lookup data.
* Final clean records: 12.
* `delay_days = max(actual_days - promised_days, 0)`.
* The tables were merged using `route_id` with a **LEFT JOIN**.

## Tools

Excel | SQL | Python | Power BI

## Folder Structure

```text
data/
└── raw/

excel/
└── analysis.xlsx

sql/
├── setup.sql
└── queries.sql

python/
└── analysis.py

powerbi/
└── dashboard.pbix

outputs/
```

## How to Run

Install the required Python packages:

```bash
pip install -r requirements.txt
```

Run the Python analysis:

```bash
python python/analysis.py
```

Run the SQL files in the following order:

1. `sql/setup.sql`
2. `sql/queries.sql`

## Findings

* **Highest-delay hub:** Mumbai
* **Highest-delay service type:** Standard
* **Hub with the lowest delay:** Chennai
* **Recommendation:** Focus on improving delivery performance in Mumbai. Promote the Express service as an alternative to the Standard service where appropriate.

## Video

**Google Drive:**
https://drive.google.com/file/d/1WTzt21a59AQPrQ0SNECbcdCrHaXNvWvP/view?usp=drive_link

**Access:** Anyone with the link can view.

## Authorship

All work in this repository is my own, except where sources are explicitly cited.

GitHub practice update.