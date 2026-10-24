

select r.rep_name,o.order_month,r.monthly_target,
sum(o.amount)as revenue,
case 
when sum(o.amount)<r.monthly_target then 'below target'
when sum(o.amount)<(1.1*r.monthly_target) then 'on target'
else 'above target'
end as performance_tire
from reps as r
join customers as c
on c.rep_id=r.rep_id
join orders as o
on o.customer_id=c.customer_id
where o.status='completed'
group by 
r.rep_name, o.order_month,r.monthly_target
order by r.rep_name,o.order_month;