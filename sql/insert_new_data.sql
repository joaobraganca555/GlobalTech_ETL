USE GlobalTech

-- Insert rows into table 'TableName'
INSERT INTO orders
    ( -- columns to insert data into
    [order_id], [customer_id], [status], [salesman_id], [order_date], [shipped_date], [canceled_date], [limit_payment_date]
    )
VALUES
    ( -- first row: values for the columns in the list above
        107	, 18	, 'Pending'	, 54	, '2016-11-17 00:00:00.000'	, NULL	, NULL	, '2017-02-17 00:00:00.000'
)
-- add more rows here
GO


-- Insert rows into table 'order_items'
INSERT INTO order_items
    ( -- columns to insert data into
    [order_id], [item_id], [product_id], [quantity], [unit_price]
    )
VALUES
    ( -- first row: values for the columns in the list above
        107, 5, 103, 80.00, 900.00
)   
-- add more rows here
GO