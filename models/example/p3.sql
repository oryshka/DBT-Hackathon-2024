-- average due to years
select distinct(extract(year from order_date)) as years, avg(sales) as aver
from {{ref("t")}}
group by 1
order by 1 