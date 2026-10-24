 m# DASHBOARD

## TASK 1

##### Data source:
* `data/order_clean.csv`

##### Dimension:
* `order_id`, `order_month`, `clean_first_name`, `clean_last_name`, `region`, `rep_name`, `item`, `category`, `status`

##### Measures:
* `unit_price`, `quantity`, `amount`, `revenue_calc`

---

## TASK 2

#### KPI cards:

* **Total Revenue:** ₹346,200 (`SUM(amount)`) (worksheet 1)
* **Total Units Sold:** 106 (`sum(category)`) (worksheet 2)

> The Total Revenue card shows ₹346,200, which equals `total_revenue` from Part A’s q05 and excel `=sum(amount)`.

---

## TASK 3

#### Chart sheets:

##### Revenue by Region: (worksheet 4)
* **Chart type:** Use bar chart: Columns `region` · Rows `SUM(amount)` · sorted high to low. Sum = 346,200.
* **Reason for chart:** Compare revenue amount for each region, so use bar chart.
  * **North:** 119,300
  * **South:** 82,500
  * **West:** 74,900
  * **East:** 69,500

##### Revenue by Category: (worksheet 5)
* **Chart type:** Use bar chart: Columns `category` · Rows `SUM(amount)`. Sum = 346,200.
* **Reason for chart:** Compare revenue amount for each category, so use bar chart.
  * **Electronics:** 142,300
  * **Home:** 126,400
  * **Apparel:** 77,500

##### Revenue Trend by Month and Category: (worksheet 6)
* **Chart type:** Use line chart: Columns `order_month` · text `SUM(amount)` · Colour `category`.
* **Reason for line chart:** It shows change over time, and one line per category lets you compare trends.

| Month | Apparel | Electronics | Home | Total |
| :--- | :--- | :--- | :--- | :--- |
| **2026-09** | 24,700 | 43,000 | 30,600 | — |
| **2026-10** | 30,600 | 49,900 | 12,600 | — |
| **2026-11** | 22,200 | 49,400 | 83,200 | — |
| **Total** | **77,500** | **1,42,300** | **1,26,400** | — |

##### Region x Category Detail: (worksheet 7)
* **Chart type:** Use text table: Rows `region` · Columns `category` · Text `SUM(amount)`. Same numbers as Part B pivot (i), turned on its side.
* **Reason for text table:** It gives exact values, easy to understand.

| Region | Apparel | Electronics | Home | Total |
| :--- | :--- | :--- | :--- | :--- |
| **East** | 10,600 | 21,400 | 37,500 | 69,500 |
| **North** | 19,400 | 73,400 | 26,500 | 1,19,300 |
| **South** | 10,000 | 28,700 | 43,800 | 82,500 |
| **West** | 37,500 | 18,800 | 18,600 | 74,900 |
| **Total** | **77,500** | **1,42,300** | **1,26,400** | **3,46,200** |

---

## TASK 4

### Dashboard layout

##### Top-to-bottom order, containers, and filters

**Containers:**
* **Vertical container:** Used to hold the whole dashboard.
* **Item 1:** Horizontal Container for KPI Cards (Total Revenue & Total Units Sold) and Category Filter Dropdown/Pills.
* **Item 2:** Single Worksheet Slot for Revenue Trend Line Chart.
* **Item 3:** Horizontal Container holding Revenue by Region Bar Chart (Left) and Revenue by Category Bar Chart (Right).
* **Item 4:** Single Worksheet Slot for Region x Category Detail Text Table.
* **Item 5:** Recommendation and summary.

**Structure & Placement Order (Top to Bottom):**
1. **Top Band:** KPI Cards (Total Revenue & Total Units Sold side-by-side).
2. **Filter Band:** Interactive Category Filter directly next to the KPI cards.
3. **Trend Section:** Revenue Trend by Month and Category (Line Chart).
4. **Comparison Section:** Side-by-side Revenue by Region & Revenue by Category (Bar Charts).
5. **Bottom Section:** Region x Category Detail (Text Table), followed by recommendation and summary.

**Filter Application & Cross-Filtering:**
* **Category Filter:** Configured to apply to all worksheets using this data source.
* **Use as Filter Behavior:** When a user clicks a bar in Revenue by Region with "Use as Filter" activated, all other worksheets (KPI cards, Revenue by Category bar chart, Revenue Trend line chart, and Detail text table) instantly filter to display data corresponding exclusively to the selected region.

---

## TASK 5

#### Insight and recommendation narrative

##### Visualization Summary:

* **Regional Comparison:** The North region generated the highest overall revenue at ₹1,19,300, outperforming the lowest-performing East region (₹69,500) by ₹49,800 (a 71.6% variance), driven primarily by strong sales in the Electronics category. North fell every month, 53,500 → 41,300 → 24,500, while East rose from 6,400 to 50,900.
* **Monthly Change Trend:** Total revenue in the Home category experienced a sharp drop from ₹30,600 in 2026-09 down to ₹12,600 in 2026-10, before surging by ₹70,600 to peak at ₹83,200 in 2026-11. A temporal breakdown showing steady total revenue performance across September (₹98,300) and October (₹93,100), followed by a steep increase in sales during November (₹154,800).
* **Category Distribution within Regions:** In the West region, revenue is heavily concentrated in Apparel, which produced ₹37,500 (50.1% of West's ₹74,900 regional revenue), whereas Apparel performed weakest in the South region at ₹10,000.

##### Exactly three recommendations:

1. **North · Home**
   * **Action:** Fund an Air Fryer and Home promotion in North.
   * **Because:** North fell 53,500 → 41,300 (−22.8%) → 24,500, under its 40,000 target; North Home was 1,900 in Oct, 0 in Nov.
   * **Watch:** North monthly revenue vs 40,000.
   * **Action:** Extend the Apparel promotion in West and keep stock deep.
   * **Because:** West Apparel is 37,500, 48% of all Apparel revenue (77,500).

2. **Promotional Push for East Apparel:**
   * **Target:** East region / Apparel category.
   * **Action:** Launch digital marketing campaigns and bundled discount offers tailored to drive sales for Apparel items in the East region.
   * **Motivating Data:** The East region generated only ₹10,600 in total Apparel sales (6 units sold), making it the lowest-performing region for this category.
   * **Success Metric:** Apparel unit sales volume and revenue percentage increase in the East region over the next quarter.

3. **South and East · Home**
   * **Action:** Pre-stock Air Fryers before the next peak.
   * **Because:** Home rose 12,600 (Oct) → 83,200 (Nov); South Home 43,800, East Home 37,500.
   * **Watch:** Air Fryer completed units and the pending-to-completed rate.

---

## TASK 6

#### Reconciliation

| Total Revenue KPI | Σ Revenue by Region | Σ Revenue by Category | Part B Pivot Total |
| :--- | :--- | :--- | :--- |
| **346,200** | **346,200** | **346,200** | **346,200** |
| `SUM(amount)` | 119,300 + 82,500 + 74,900 + 69,500 | 142,300 + 126,400 + 77,500 | Grand total, pivots (i) and (ii) |