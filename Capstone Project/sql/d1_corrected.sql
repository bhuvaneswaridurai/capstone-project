use bigbillion;
-- Which regions sell the most? (fixed)
SELECT c.region,SUM(o.amount) AS sales
FROM orders as o
left JOIN customers as c
ON o.customer_id = c.customer_id
WHERE o.status = 'completed'
GROUP BY c.region
HAVING SUM(o.amount) > 80000
ORDER BY sales DESC;
