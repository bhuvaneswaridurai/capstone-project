select item,sum(amount)as revenue,
case when sum(amount)>=60000 then "high"
when sum(amount)>=15000 then "medium"
else "low"
end as contribute_tire
from orders
group by item
order by revenue desc ;