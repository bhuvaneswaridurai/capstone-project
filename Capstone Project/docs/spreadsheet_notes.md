# **Spreadsheet Processing and Analysis Documentation**

## **Task 2: Name Cleaning & Standardisation**

### **Formula Applied**

* **First Name Cleaning:** `=PROPER(TRIM(C2))` through `=PROPER(TRIM(C91))`

* **Last Name Cleaning:** `=PROPER(TRIM(E2))` through `=PROPER(TRIM(E91))`

### **Sample Output Table**

| order_id | order_month | first_name | clean_first_name | last_name | clean_last_name | 
| ----- | ----- | ----- | ----- | ----- | ----- | 
| **1001** | 2026-09 | MEERA | Meera | Patil | Patil | 
| **1002** | 2026-09 | Nisha | Nisha | Mishra | Mishra | 

## **Task 3: Category & Unit Price Lookups**

### **Formulas Applied**

* **Category Column:** `=VLOOKUP(I2, product!$A$2:$B$10, 2)` through `=VLOOKUP(I91, product!$A$2:$B$10, 2)`

* **Unit Price Column:** `=XLOOKUP(I2, product!$A$2:$A$10, product!$C$2:$C$10, "unknown item")` through `=XLOOKUP(I91, product!$A$2:$A$10, product!$C$2:$C$10, "unknown item")`

### **Sample Output Table**

| order_id | order_month | first_name | clean_first_name | last_name | clean_last_name | region | rep_name | item | category | quantity | unit_price | revenue_calc | amount | status | 
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | 
| **1001** | 2026-09 | MEERA | Meera | Patil | Patil | South | Kavya Nair | Bluetooth Speaker | Electronics | 2 | 2800 | 5600 | *NULL* | pending | 
| **1002** | 2026-09 | Nisha | Nisha | Mishra | Mishra | West | Neha Kulkarni | Smart Watch | Electronics | 1 | 4500 | 4500 | 4500 | pending | 
| **1003** | 2026-09 | Lakshmi | Lakshmi | Kapoor | Kapoor | South | Kavya Nair | Air Fryer | Home | 2 | 5200 | 10400 | 10400 | disputed | 

## **Task 4: Revenue Calculation**

### **Formula Applied**

* **Calculated Revenue:** `=K2*L2` through `=K91*L91` *(Quantity × Unit Price)*

### **Sample Output Table**

| order_id | order_month | first_name | clean_first_name | last_name | clean_last_name | region | rep_name | item | category | quantity | unit_price | revenue_calc | amount | status | 
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | 
| **1001** | 2026-09 | MEERA | Meera | Patil | Patil | South | Kavya Nair | Bluetooth Speaker | Electronics | 2 | 2800 | 5600 | *NULL* | pending | 

## **Task 5: Core KPI Summary**

| Metric | Value | 
| ----- | ----- | 
| **Count** | 63 | 
| **Sum** | 346,200 | 
| **Average** | 5,495.238095 | 
| **Min** | 1,100 | 
| **Max** | 15,600 | 

## **Task 6: Pivot Table Summaries**

### **1. Regional Sales by Category**

| Category | East | North | South | West | Grand Total | 
| ----- | ----- | ----- | ----- | ----- | ----- | 
| **Apparel** | 10,600 | 19,400 | 10,000 | 37,500 | **77,500** | 
| **Electronics** | 21,400 | 73,400 | 28,700 | 18,800 | **142,300** | 
| **Home** | 37,500 | 26,500 | 43,800 | 18,600 | **126,400** | 
| **Grand Total** | **69,500** | **119,300** | **82,500** | **74,900** | **346,200** | 

### **2. Monthly Order Volume & Sales Summary**

| Month | SUM of amount | COUNT of order_id | 
| ----- | ----- | ----- | 
| **Sep** | 98,300 | 19 | 
| **Oct** | 93,100 | 20 | 
| **Nov** | 154,800 | 24 | 
| **Grand Total** | **346,200** | **63** | 

## **Task 7: Reconciliation & Data Validation**

### **1. MySQL vs Excel Reconciliation**

| Metric | MySQL | Excel | Status | 
| ----- | ----- | ----- | ----- | 
| **Count** | 63 | 63 | Matched | 
| **Sum** | 346,200 | 346,200 | Matched | 
| **Average** | 5,495.2381 | 5,495.238095 | Matched | 
| **Min** | 1,100 | 1,100 | Matched | 
| **Max** | 15,600 | 15,600 | Matched | 

### **2. Data Validation Findings**

#### **Handling Missing Amounts**

* **Identification:** `order_id` **1001**, **1010**, and **1064** have missing amounts.

* **Treatment:** All missing records correspond to `pending` orders. When filtering for completed orders, they are naturally excluded. Blank fields were intentionally left blank rather than being populated with `0` to prevent skewing the overall order averages downward.

#### **Data Type Consistency**

* **Verification Method:**  data type checking across all fields.

* **Findings:**

  * **Numeric Fields:** `order_id`, `quantity`, and `amount` are properly defined as numeric types. No numeric values are formatted as text string characters.

  * **Text Fields:** `order_month`, `clean_first_name`, `clean_last_name`, `region`, `rep_name`, `item`, `category`, and `status`.

#### **Duplicates & Outliers**

* **Duplicate Order IDs:** Verified across all 90 total rows. **0 duplicates found** (every `order_id` is unique).

* **Outliers & High-Value Ties:**

  * **Maximum Completed Amount:** ₹15,600

  * **Tied Order IDs:** 4 orders tie for the top amount:

    * `order_id` **1061** (Air Fryer, Qty: 3)

    * `order_id` **1065** (Air Fryer, Qty: 3)

    * `order_id` **1069** (Air Fryer, Qty: 3)

    * `order_id` **1077** (Air Fryer, Qty: 3)

  * **Verdict:** ₹15,600 is valid (bulk purchase of high-value items at ₹5,200/unit) and is not an entry error.

### **3. Dataset Setup Rules**

* **Revenue Filtering:** Revenue only considers completed orders.

* **Missing Value Rule:** Blank amounts remain unpopulated rather than set to 0.

* **Date Storage:** `order_month` is maintained as text (`YYYY-MM`).

* **Final Deliverable:** CSV file containing **63 completed rows** with **13 columns**:

   1. `order_id`

   2. `order_month`

   3. `clean_first_name`

   4. `clean_last_name`

   5. `region`

   6. `rep_name`

   7. `item`

   8. `category`

   9. `unit_price`

  10. `quantity`

  11. `amount`

  12. `revenue_calc`

  13. `status`