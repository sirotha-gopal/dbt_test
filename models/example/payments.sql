{{ config(alias='payments') }}

with source as (
  select * from {{ ref("r_payments") }}
)

select
  id as payment_id,
  order_id as order_id,
  payment_method as payment_method,
  amount as amount
from source
