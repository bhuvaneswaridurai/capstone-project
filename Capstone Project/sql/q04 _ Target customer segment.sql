use bigbillion;
select customer_id,first_name,last_name,region,age from customers
where region in('north','west')and age between 25 and 40
order by customer_id;
select customer_id,first_name,last_name,region,age from customers
where region in('north','west')and age between 25 and 40
order by age asc;