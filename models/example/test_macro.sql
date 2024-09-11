select
  {{ concat_full_name('first_name', 'last_name') }} as full_name
from {{ ref("r_customers") }}
limit 10
