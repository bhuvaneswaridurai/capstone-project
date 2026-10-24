# Capstone Project

## Big Billion Days Regional Performance Review

### PART A: SQL
* **USING SOFTWARE:** MySQL Workbench 8.0 CE
* In this software, create 13 queries. Save as `q1.sql` ... `q13.sql`.
* **Result:** Store all results in `result.md` file. Generate one CSV file saved in `data/orders_enriched.csv`.

### PART B: EXCEL (SPREADSHEETS)
* **USING SOFTWARE:** Microsoft Excel and Google Sheets
* In this software, use `orders_enriched.csv`, clean some columns, and create a pivot table.
* **Result:** Store all answers in `spreadsheet.md` file. Generate `clean_order.csv` file.

### Part C — Dashboard Specification
* **USING SOFTWARE:** Tableau Public (tableau.com)
* In this software, create a dashboard. The dashboard is built on `data/orders_clean.csv` file and turns the numbers into a business story.
* **Result:** Store all answers in `dashboard.md` file.

### Part D — AI-Assisted Analysis
* **USING SOFTWARE:** https://gemini.google.com
* In this part, do 5 tasks and create prompts.
* **Result:** Store all results in `ai_log.md` file.

---

### Summary
* **Category Leadership:** Electronics is the top-performing category, generating ₹1,42,300 (~41.1% of total revenue) across 24 completed orders, closely followed by Home at ₹1,26,400 (36.5%).
* **Product Performance:** The Air Fryer is the single highest revenue-generating item, bringing in ₹1,04,000 (30.0% of total revenue) across just 9 orders due to its high unit price (₹5,200).
* **Regional Dominance & Growth:** The North region led overall sales with ₹1,19,300 (34.5% of total revenue), while overall sales momentum accelerated significantly in November 2026 to ₹1,54,800—a ~66% jump compared to October.

---

### File Index Mapping
* **Main file:** Capstone Project
  * `README.md`
* **SQL files:**
  * `sql/00_schema_and_seed.sql`
  * `sql/q01.sql` … `sql/q13.sql`
  * `sql/d1_corrected.sql`
* **Result file:**
  * `results/query_results.md`
* **Data files:**
  * `data/orders_enriched.csv`
  * `data/orders_clean.csv`
* **Docs files:**
  * `docs/spreadsheet_notes.md`
  * `docs/dashboard_spec.md`
  * `docs/ai_log.md`

---

### Assumptions
* This project has four tables named `reps`, `product`, `customers`, and `orders`. It has 90 customers.
* Execute 13 queries to filter specific customers; store queries and results separately.
* Generate one CSV file, use this in Excel for cleaning, and create a pivot table.
* In Excel, create a clean CSV file with completed customers. It has 63 rows.
* Generate a dashboard using the clean CSV file.
* Use AI to verify some tasks.
* In all parts, maintain the same revenue amount (₹346,200).