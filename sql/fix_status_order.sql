DECLARE order_cursor CURSOR LOCAL FOR SELECT order_id
FROM orders
FOR
READ
ONLY
DECLARE @order_id VARCHAR(36);

OPEN order_cursor
FETCH order_cursor INTO @order_id;
WHILE (@@FETCH_STATUS = 0)
    BEGIN

    -- UPDATE orders SET [status] = '' WHERE order_id = @order_id 



    -- PRINT(@order_id)
    FETCH order_cursor INTO @order_id;
END
CLOSE order_cursor

SELECT ord.order_id, ord.order_date, ord.[status], ord.shipped_date, ord.canceled_date, ord.limit_payment_date, payment_id, [value], cust.customer_id, credit_limit
FROM orders as ord
    LEFT JOIN payments as p ON ord.order_id = p.order_id
    INNER JOIN customers AS cust ON ord.customer_id = cust.customer_id
ORDER BY customer_id, ord.order_date, p.payment_id


WITH
    payments_by_order
    AS
    (
        SELECT ord.order_id, ord.order_date, ord.[status], (ord_it.quantity * ord_it.unit_price) AS amount, ord.customer_id, ord.canceled_date, ord.shipped_date, ord.limit_payment_date
        FROM [orders] AS ord
            INNER JOIN order_items AS ord_it ON ord.order_id =  ord_it.order_id
    )

SELECT ord.order_id, SUM(p.[value]) AS payed , ord.amount
FROM payments_by_order as ord
    LEFT JOIN payments as p ON ord.order_id = p.order_id
GROUP BY ord.order_id, ord.amount