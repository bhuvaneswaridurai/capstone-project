select c.region,o.order_month,count(o.order_id)as no_of_order,
count(distinct o.customer_id)as no_of_customer,
sum(o.amount)as total_revenue,
avg(o.amount)as avg_revenue from orders as o
left join customers as c
on o.customer_id=c.customer_id
where o.status='completed'
group by c.region,o.order_month

 