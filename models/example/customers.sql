with source as (
  select * from {{ ref("r_customers") }}
)

select
  id as user_id,
  first_name as first_name,
  last_name as last_name
from source
