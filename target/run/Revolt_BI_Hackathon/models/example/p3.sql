
  create or replace   view HACKATHON.TEAM_12.p3
  
   as (
    -- average due to years
select distinct(extract(year from order_date)) as years, avg(sales) as aver
from HACKATHON.TEAM_12.t
group by 1
order by 1
  );

