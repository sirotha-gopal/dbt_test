{{ config(alias='orders') }}
with source as (
  select * from {{ ref("r_orders") }}
)

select
  id as order_id,
  user_id as customer_id,
  ORDER_DATE as ORDER_DATE,
  status as status
from source
