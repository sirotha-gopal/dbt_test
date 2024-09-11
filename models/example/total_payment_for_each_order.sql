select o.order_id, sum(p.amount) as total_payment
from {{ ref('payments') }} p, {{ ref('orders') }} o
where p.order_id = o.order_id
group by o.order_id
