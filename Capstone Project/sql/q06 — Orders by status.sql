use bigbillion;
select status,count(order_id) as no_of_order,sum(amount)as total_amount from orders
group by status
order by no_of_order desc;