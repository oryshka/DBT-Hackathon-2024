-- count of orders per customer per year
select customer, extract(year from order_date) as years, count(distinct(order_id)) as count
from {{ref("t")}}
group by customer, extract(year from order_date)
order by 1, 2, 3 desc