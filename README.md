<p align="center">
  <img src="assets/case_header.svg" alt="Case File 11391" width="100%" />
</p>

<p align="center">
  <a href="https://drive.google.com/file/d/1WTzt21a59AQPrQ0SNECbcdCrHaXNvWvP/view?usp=drive_link"><b>🎞️ PLAY SURVEILLANCE FOOTAGE (12 min)</b></a>
</p>

---

## 🧷 EXHIBIT A — The Dashboard

<p align="center">
  <img src="outputs/powerbi_dashboard.png" alt="Power BI Dashboard" width="100%" />
</p>

---

## 🪪 CASE DETAILS

```text
┌──────────────────────────────────────────────┐
│  CASE NO.      :  11391                      │
│  INVESTIGATOR  :  Mayur Makwana              │
│  DIVISION      :  Set A                      │
│  EVIDENCE      :  12 clean records           │
│  TOOLS         :  Excel · SQL · Python · BI  │
│  STATUS        :  ■■■■■■■■■■ CLOSED          │
└──────────────────────────────────────────────┘
```

---

## 🕵️ THE BRIEFING

Customer tickets are taking too long to resolve. The department wants answers to two questions:

> 🔴 **Q1.** Which support team should improve its resolution performance?
>
> 🔴 **Q2.** How does service quality vary by channel?

---

## 🗃️ THE EVIDENCE

| Exhibit | File | Contains |
|:-:|---|---|
| **B** | `data/raw/tickets.csv` | The tickets (fact data) |
| **C** | `data/raw/teams.csv` | The teams (lookup data) |

**⚠️ Tampering found:** one exact duplicate row. It was removed, leaving **12 clean records**.

---

## 🔬 THE INVESTIGATION

```text
 STEP 1   Remove the duplicate row
    ↓
 STEP 2   Join tickets ⟷ teams on team_id
    ↓
 STEP 3   Flag every late ticket
              breach_flag = (resolution_hours > 24)
    ↓
 STEP 4   Measure the damage
              breach_rate = breach_flag_count / all_records × 100
    ↓
 STEP 5   Compare teams and channels
```

---

## 🚨 THE SUSPECTS

> **Prime suspects: AppSupport and BillingHelp.**
> Both are slow to resolve tickets and need to improve first.

## 🏅 THE WITNESS

> **Email is the most reliable channel.**
> It has fewer SLA breaches than phone or chat.

---

## ⚖️ THE VERDICT

```text
┌─────────────────────────────────────────────────────────┐
│  1. Fix AppSupport and BillingHelp.                     │
│  2. Encourage customers to use Email for support.       │
└─────────────────────────────────────────────────────────┘
```

---

## 🧾 WITNESS STATEMENTS (Cross-tool check)

Four tools were asked the same question: *"What is the average `resolution_hours`?"*

| Witness | Statement |
|---|:-:|
| 📗 Excel | **24** |
| 🐬 SQL | **24** |
| 🐍 Python | **24** |
| 📊 Power BI | **24** |

✅ **All statements match.** Any difference is only due to rounding.

---

## 🔁 REPLAY THE INVESTIGATION

<details>
<summary><b>🐬 SQL</b></summary>

Run `sql/setup.sql` first, then `sql/queries.sql`.
</details>

<details>
<summary><b>🐍 Python</b></summary>

From the repository root:

```bash
pip install -r requirements.txt
python python/analysis.py
```
</details>

<details>
<summary><b>📗 Excel</b></summary>

Open `excel/analysis.xlsx`.
</details>

<details>
<summary><b>📊 Power BI</b></summary>

Open `powerbi/dashboard.pbix` and update the CSV path if required.
</details>

---

## 🗄️ CASE FILE INDEX

```text
📁 case-11391
 ├─ 📁 data/raw      tickets.csv, teams.csv
 ├─ 📁 excel         analysis.xlsx
 ├─ 📁 sql           setup.sql, queries.sql
 ├─ 📁 python        analysis.py
 ├─ 📁 powerbi       dashboard.pbix
 ├─ 📁 outputs       results and charts
 ├─ 📁 assets        case_header.svg
 └─ 📄 requirements.txt
```

---

<p align="center">
  <b>✍️ Signed:</b> Mayur Makwana · ID 11391<br>
  <sub>All work in this repository is my own except where cited.</sub>
</p>
