-- count of orders per customer
select customer, count(distinct(order_id)) as counter
from HACKATHON.TEAM_12.t
group by customer
order by 2 desc