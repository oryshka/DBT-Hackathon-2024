
  create or replace   view HACKATHON.TEAM_12.p7
  
   as (
    -- average duration of customer
with differences as (
                    select customer
                    , round(((max(order_date) - min(order_date)) / 365), 1) as differ
                    from HACKATHON.TEAM_12.t
                    group by customer
                    )
select avg(differ) as average_difference
from differences
  );

