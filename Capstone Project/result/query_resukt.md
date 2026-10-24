# Query Results Summary

## Seed Check

**Total Rows: 4**

| Table Name | Row Count |
| :--- | :--- |
| `reps_table` | 4 |
| `product_table` | 9 |
| `customer_table` | 24 |
| `orders_table` | 90 |

---

## **q01 — Pending Orders**

**Total Rows: 19**

| Order ID | Customer ID | Item | Amount |
| :--- | :--- | :--- | :--- |
| **1001** | 10 | Bluetooth Speaker | *Unspecified* |
| **1002** | 16 | Smart Watch | 4500 |
| **1004** | 19 | Cotton Kurta | 2800 |
| **1010** | 19 | Wireless Earbuds | *Unspecified* |
| **1033** | 18 | Denim Jacket | 2500 |
| **1035** | 5 | Bluetooth Speaker | 2800 |
| **1036** | 2 | Denim Jacket | 5000 |
| **1037** | 3 | Bedsheet Set | 3800 |
| **1042** | 14 | Table Lamp | 1100 |
| **1044** | 10 | Running Shoes | 3600 |
| **1052** | 15 | Smart Watch | 13500 |
| **1057** | 4 | Bluetooth Speaker | 2800 |
| **1058** | 13 | Bedsheet Set | 1900 |
| **1063** | 10 | Air Fryer | 5200 |
| **1064** | 20 | Bluetooth Speaker | *Unspecified* |
| **1068** | 23 | Air Fryer | 5200 |
| **1071** | 22 | Air Fryer | 5200 |
| **1075** | 4 | Running Shoes | 3600 |
| **1078** | 3 | Cotton Kurta | 1400 |

---

## **q02 — Missing Amounts**

**Total Rows: 3**

| Order ID | Customer ID | Item | Status |
| :--- | :--- | :--- | :--- |
| **1001** | 10 | Bluetooth Speaker | pending |
| **1010** | 19 | Wireless Earbuds | pending |
| **1064** | 20 | Bluetooth Speaker | pending |

---

## **q03 — Five Biggest Completed Orders**

**Total Rows: 5**

| Order ID | Customer ID | Item | Amount |
| :--- | :--- | :--- | :--- |
| **1061** | 16 | Air Fryer | 15600 |
| **1065** | 22 | Air Fryer | 15600 |
| **1069** | 15 | Air Fryer | 15600 |
| **1077** | 3 | Air Fryer | 15600 |
| **1006** | 5 | Smart Watch | 13500 |

---

## **q04 — Target Customer Segment**

**Total Rows: 8**

| Customer ID | First Name | Last Name | Region | Age |
| :--- | :--- | :--- | :--- | :--- |
| **1** | Aarav | Sharma | North | 28 |
| **5** | Vikram | Singh | North | 37 |
| **8** | Divya | Gupta | West | 26 |
| **12** | Pooja | Menon | West | 39 |
| **16** | Nisha | Mishra | West | 36 |
| **17** | Farhan | Shah | North | 27 |
| **21** | Manoj | Desai | North | 40 |
| **24** | Reena | Kulkarni | West | 25 |

---

## **q05 — Headline KPIs**

**Total Rows: 1**

| Total Order | Total Revenue | Avg Order Value | Min Order Value | Max Order Value |
| :--- | :--- | :--- | :--- | :--- |
| **63** | **346200** | **5495.2381** | **1100** | **15600** |

---

## **q06 — Orders by Status**

**Total Rows: 3**

| Status | No of Order | Total Amount |
| :--- | :--- | :--- |
| **completed** | 63 | 346200 |
| **pending** | 19 | 64900 |
| **disputed** | 8 | 73200 |

---

## **q07 — Strong Products**

**Total Rows: 4**

| Item | No of Orders | Revenue |
| :--- | :--- | :--- |
| **Air Fryer** | 9 | 104000 |
| **Smart Watch** | 9 | 67500 |
| **Wireless Earbuds** | 11 | 60800 |
| **Running Shoes** | 8 | 43200 |

---

## **q08 — Customer Profile by Region**

**Total Rows: 4**

| Region | No of Customer | Average Age | Min Age | Max Age |
| :--- | :--- | :--- | :--- | :--- |
| **East** | 6 | 34.0000 | 29 | 41 |
| **North** | 6 | 37.5000 | 27 | 48 |
| **South** | 6 | 36.3333 | 24 | 52 |
| **West** | 6 | 28.5000 | 22 | 39 |

---

## **q09 — Order-Level Fact Table**

**Total Rows: 90**

| Order ID | Order Month | First Name | Last Name | Region | Rep Name | Item | Quantity | Amount | Status |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **1001** | 2026-09 | Meera | Patil | South | Kavya Nair | Bluetooth Speaker | 2 | *Unspecified* | pending |
| **1002** | 2026-09 | Nisha | Mishra | West | Neha Kulkarni | Smart Watch | 1 | 4500 | pending |
| **1003** | 2026-09 | Lakshmi | Kapoor | South | Kavya Nair | Air Fryer | 2 | 10400 | disputed |
| **1004** | 2026-09 | Gaurav | Yadav | East | Sanjay Roy | Cotton Kurta | 2 | 2800 | pending |

---

## **q10 — Customers Who Never Ordered**

**Total Rows: 4**

| Customer ID | First Name | Last Name | Region |
| :--- | :--- | :--- | :--- |
| **6** | Ananya | Reddy | South |
| **11** | Imran | Joshi | East |
| **17** | Farhan | Shah | North |
| **24** | Reena | Kulkarni | West |

---

## **q11 — Region and Month Report**

**Total Rows: 12**

| Region | Order Month | No of Order | No of Customer | Total Revenue | Avg Revenue |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **East** | 2026-09 | 2 | 2 | 6400 | 3200.0000 |
| **East** | 2026-10 | 4 | 3 | 12200 | 3050.0000 |
| **East** | 2026-11 | 6 | 5 | 50900 | 8483.3333 |
| **North** | 2026-09 | 8 | 2 | 53500 | 6687.5000 |
| **North** | 2026-10 | 6 | 4 | 41300 | 6883.3333 |
| **North** | 2026-11 | 5 | 4 | 24500 | 4900.0000 |
| **South** | 2026-09 | 5 | 3 | 19800 | 3960.0000 |
| **South** | 2026-10 | 5 | 4 | 19000 | 3800.0000 |
| **South** | 2026-11 | 7 | 4 | 43700 | 6242.8571 |
| **West** | 2026-09 | 4 | 3 | 18600 | 4650.0000 |
| **West** | 2026-10 | 5 | 4 | 20600 | 4120.0000 |
| **West** | 2026-11 | 6 | 3 | 35700 | 5950.0000 |

---

## **q12 — Product Contribution Tiers**

**Total Rows: 9**

| Item | Revenue | Contribute Tier |
| :--- | :--- | :--- |
| **Air Fryer** | 145600 | high |
| **Smart Watch** | 94500 | high |
| **Wireless Earbuds** | 83200 | high |
| **Running Shoes** | 61200 | high |
| **Denim Jacket** | 30000 | medium |
| **Cotton Kurta** | 21000 | medium |
| **Bluetooth Speaker** | 19600 | medium |
| **Bedsheet Set** | 17100 | medium |
| **Table Lamp** | 12100 | low |

---

## **q13 — Rep Performance Against Target**

**Total Rows: 12**

| Rep Name | Order Month | Monthly Target | Revenue | Performance Tier |
| :--- | :--- | :--- | :--- | :--- |
| **Arjun Mehta** | 2026-09 | 40000 | 53500 | above target |
| **Arjun Mehta** | 2026-10 | 40000 | 41300 | on target |
| **Arjun Mehta** | 2026-11 | 40000 | 24500 | below target |
| **Kavya Nair** | 2026-09 | 20000 | 19800 | below target |
| **Kavya Nair** | 2026-10 | 20000 | 19000 | below target |
| **Kavya Nair** | 2026-11 | 20000 | 43700 | above target |
| **Neha Kulkarni** | 2026-09 | 20000 | 18600 | below target |
| **Neha Kulkarni** | 2026-10 | 20000 | 20600 | on target |
| **Neha Kulkarni** | 2026-11 | 20000 | 35700 | above target |
| **Sanjay Roy** | 2026-09 | 12000 | 6400 | below target |
| **Sanjay Roy** | 2026-10 | 12000 | 12200 | on target |
| **Sanjay Roy** | 2026-11 | 12000 | 50900 | above target |
