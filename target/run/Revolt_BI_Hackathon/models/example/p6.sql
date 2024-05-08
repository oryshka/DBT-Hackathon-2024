
  create or replace   view HACKATHON.TEAM_12.p6
  
   as (
    -- how long customer was a customer
select customer, round(((max(order_date) - min(order_date))/365), 1) as order_time
from HACKATHON.TEAM_12.t
group by customer
  );

