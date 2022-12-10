SELECT ord.order_id, ord.order_date, ord.[status],(ord_it.quantity * ord_it.unit_price) AS amount, ord.customer_id, cust.credit_limit, ord.canceled_date, ord.shipped_date, ord.limit_payment_date
  FROM [orders] AS ord
  INNER JOIN order_items AS ord_it ON ord.order_id =  ord_it.order_id 
  INNER JOIN customers AS cust ON ord.customer_id = cust.customer_id 
