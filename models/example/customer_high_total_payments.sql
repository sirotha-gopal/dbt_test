select 
  o.customer_id, 
  sum(p.amount) as total_payment
from {{ ref('payments') }} p
join {{ ref('orders') }} o 
on p.order_id = o.order_id
group by o.customer_id
order by total_payment desc
