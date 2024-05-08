{% macro
map_columns(table_mapping, customer_col, date_col, sum_col) %}
select
    {{ customer_col }} as customer,
    {{ date_col }} as order_date,
    {{ sum_col }} as sales
from
    {{ ref(HACKATHON.TEAM_12.T) }}
{% endmacro %}
{% call dbt_utils.map_columns('HACKATHON.TEAM_12.T', 'customer', 'order_date', 'sales') %}
{% endcall %}
