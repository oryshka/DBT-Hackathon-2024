

-- summ sales
select order_id, SUM(sales)
from {{ source('SAAS', 'SAAS_SALES') }}
group by order_id
order by 2 desc

-- average due to years
select distinct(extract(year from order_date)) as years, avg(sales)
from HACKATHON.TEAM_12.T
group by 1
order by 1 

-- average due to countries
select distinct(country) as country, avg(sales)
from HACKATHON.TEAM_12.T
group by 1
order by 2 desc

-- count of orders per customer
select customer, count(distinct(order_id)) 
from HACKATHON.TEAM_12.T
group by customer
order by 2 desc

-- count of orders per customer per year
select customer, extract(year from order_date) as years, count(distinct(order_id)) 
from HACKATHON.TEAM_12.T
group by customer, extract(year from order_date)
order by 1, 2, 3 desc

-- how long customer was a customer
select customer, round(((max(order_date) - min(order_date))/365), 1) as order_time
from HACKATHON.TEAM_12.T
group by customer

-- average duration of customer
with differences as (
                    select customer
                    , round(((max(order_date) - min(order_date)) / 365), 1) as differ
                    from HACKATHON.TEAM_12.T
                    group by customer
                    )
select avg(differ) as average_difference
from differences;
