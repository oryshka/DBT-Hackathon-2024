-- summ sales
select order_id, SUM(sales) as summary
from {{ source('SAAS', 'SAAS_SALES') }}
group by order_id
order by 2 desc
