## AI-Assisted Analysis with Human-in-the-Loop Verification

### TASK 1: Five-part prompt for Part A

A prompt that reproduces q13:

*   **Role:** You are a senior data analyst who writes clean, portable SQL.
*   **Task:** Write one query giving, for each sales rep and month, the monthly target, completed revenue and a performance tier.
*   **Context:** SQLite (state your dialect). `reps(rep_id, rep_name, region, monthly_target)`; `customers(customer_id, first_name, last_name, city, region, age, rep_id)`; `orders(order_id, customer_id, item, quantity, amount, status, order_month)`. `customers.rep_id = reps.rep_id`; `orders.customer_id = customers.customer_id`.
*   **Constraints:** Completed orders only. ‘Below Target’ if revenue < monthly_target; ‘On Target’ if ≥ target and < 1.1 × target; ‘Above Target’ otherwise. Columns `rep_name`, `order_month`, `monthly_target`, `revenue`, `performance_tier`; order by `rep_name`, `order_month`. No `WITH` clauses, no stored procedures.
*   **Format:** Raw SQL only, no text before or after, with inline `--` comments.

---

### TASK 2 · INSPECT SCENARIO D1

| # | Defect | Classification | Correct clause or fix |
|---|---|---|---|
| 1 | Table `sales` does not exist | Fake method/function | `FROM orders o JOIN customers c ON o.customer_id = c.customer_id` |
| 2 | Columns `region_name`, `total_sales` do not exist | Fake method/function | Use `c.region` and `o.amount` |
| 3 | `SUM()` placed in `WHERE` | Logic error | `WHERE o.status = 'completed' … HAVING SUM(o.amount) > 80000` |
| 4 | “Grew 38% month over month”, with no evidence | Phantom statistic | Compute it from q11: North Sep → Oct is −22.8% |

---

### TASK 3: Verify Scenario D1

**Query:**
```sql
use bigbillion;

-- Which regions sell the most? (fixed)
SELECT c.region, SUM(o.amount) AS sales
FROM orders as o
left JOIN customers as c
ON o.customer_id = c.customer_id
WHERE o.status = 'completed'
GROUP BY c.region
HAVING SUM(o.amount) > 80000
ORDER BY sales DESC;
```

**Result:**

| region | sales |
|---|---|
| North | 119300 |
| South | 82500 |

*2 rows. West (74,900) and East (69,500) fall below 80,000.*

North, from q11: $(41,300 - 53,500) \div 53,500 \times 100 = -22.8\%$

The data contradicts the +38% growth claim: North fell.

---

### TASK 4: Apply the human-in-the-loop protocol.

1. **Specification:**
   “Sell the most” means completed revenue per customer region, from orders + customers, keeping regions over 80,000.
2. **Execution:**
   Ran the AI query on the seed. It fails: no table sales, and SUM() is not allowed in WHERE.
3. **Inspection:**
   Found 4 defects: fake table, fake columns, aggregate in WHERE, unsupported 38%.
4. **Verification:**
   Corrected query returns North 119,300 and South 82,500, matching q11 totals. North Sep → Oct = −22.8%.
5. **Decision:**
   Reject the AI answer: it does not run and 38% is contradicted. Accept `d1_corrected.sql`: it runs and reconciles with q11.

---

### TASK 5: Prompt for Scenario D2

**PROMPT:**

*   **Role:** You are a spreadsheet troubleshooting expert.
*   **Task:** Find why my lookup says “not found” and give a fixed formula.
*   **Context:** `orders!G2` holds “␣Smart Watch” (a space before S). Formula: `=VLOOKUP(G2, $A$2:$C$10, 3, FALSE)`. `products` is `A1:C10`: header row 1, items in A, unit prices in C; “Smart Watch” is in column A. Expected result: 4500.
*   **Constraints:** Keep exact match (`FALSE`); no hand-editing the data; the fix must copy down.
*   **Format:** A one-sentence root cause, then the corrected formula.

**Root cause:**
The leading space: “␣Smart Watch” is not equal to “Smart Watch”, so the exact match fails.

**Repaired formula:**
`=VLOOKUP(TRIM(G2), $A$2:$C$10, 3, FALSE)`
4500

---

### TASK 6: Skeptical-analyst check on Part C

**PROMPT:**
> “Act as a skeptical analyst. My recommendation: fund a Home and Air Fryer promotion in North, because North revenue fell 53,500 → 41,300 → 24,500. List the unstated assumptions, and say what evidence would show the promotion causes a recovery, not just correlates with one.”

| Assumption | Figure or check that tests it |
|---|---|
| The fall is broad, not one customer | In Sep, customer 5 gave 35,700 of North’s 53,500 (67%). One big buyer may explain the “drop”. |
| North shoppers want Home items | North Home went 24,600 → 1,900 → 0. Compare South Home at 43,800. |
| No revenue is stuck in other statuses | North has 2 pending (4,700) and 1 disputed (9,600): too small to explain a 29,000 fall. |
| 3 months show a trend | Only 3 points, no prior-year data: run the promo as a pilot. |