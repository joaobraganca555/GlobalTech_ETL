-- AUMENTAR O LIMITE DE CREDITO DOS CLIENTES
DECLARE customer_cursor CURSOR LOCAL FOR SELECT customer_id
FROM customers
FOR
READ
ONLY
DECLARE @customer_id VARCHAR(36);

OPEN customer_cursor
FETCH customer_cursor INTO @customer_id;
WHILE (@@FETCH_STATUS = 0)
    BEGIN
    DECLARE @credit_limit DECIMAL(8,2) = (SELECT credit_limit FROM customers WHERE customer_id = @customer_id)
    UPDATE customers SET [credit_limit] = @credit_limit * 12.5 WHERE customer_id = @customer_id 

    PRINT(@customer_id)
    FETCH customer_cursor INTO @customer_id;
END
CLOSE customer_cursor
GO


-- CORRIGIR OS STATUS DAS ECONMENDAS COM O LIMITE DE CREDITO ULTRAPASSADO
DECLARE order_cursor CURSOR LOCAL FOR SELECT order_id
FROM orders
FOR
READ
ONLY
DECLARE @order_id VARCHAR(36);
DECLARE @limit_exceeded BIT;

OPEN order_cursor
FETCH order_cursor INTO @order_id;
WHILE (@@FETCH_STATUS = 0)
    BEGIN

    WITH
        payments_by_order
        AS
        (
            SELECT ord.order_id, ord.order_date, ord.[status], (ord_it.quantity * ord_it.unit_price) AS amount, ord.customer_id, ord.canceled_date, ord.shipped_date, ord.limit_payment_date
            FROM [orders] AS ord
                INNER JOIN order_items AS ord_it ON ord.order_id =  ord_it.order_id
        )

    SELECT @limit_exceeded = 
     (SELECT (CASE WHEN ord.amount - ISNULL(SUM(p.[value]), 0 ) > credit_limit THEN 1 ELSE 0 END)
        FROM payments_by_order as ord
            LEFT JOIN payments as p ON ord.order_id = p.order_id
            INNER JOIN customers AS cust ON ord.customer_id = cust.customer_id
        WHERE ord.order_id = @order_id
        GROUP BY ord.order_id, ord.amount, credit_limit)

    IF (@limit_exceeded = 1)
        UPDATE orders SET [status] = 'Pending' WHERE order_id = @order_id

    -- PRINT(@order_id)
    FETCH order_cursor INTO @order_id;
END
CLOSE order_cursor
GO


