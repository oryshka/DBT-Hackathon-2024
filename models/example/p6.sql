-- how long customer was a customer
select customer, round(((max(order_date) - min(order_date))/365), 1) as order_time
from {{ref("t")}}
group by customer