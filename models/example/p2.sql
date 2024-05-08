-- average due to countries
select distinct(country) as country, avg(sales) as aver
from {{ref("t")}}
group by 1
order by 2 desc


