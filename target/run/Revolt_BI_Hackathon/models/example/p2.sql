
  create or replace   view HACKATHON.TEAM_12.p2
  
   as (
    -- average due to countries
select distinct(country) as country, avg(sales) as aver
from HACKATHON.TEAM_12.t
group by 1
order by 2 desc
  );

