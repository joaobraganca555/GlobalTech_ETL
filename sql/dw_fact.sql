USE DW_GlobalTech
GO


--FACT ORDER
-- DELETE FROM dw.FACT_order
-- GO
-- INSERT INTO dw.FACT_order
SELECT dsa_ord.order_id,
    ISNULL(dim_war.sk_warehouse, 0) sk_warehouse,
    dim_pro.sk_product,
    dim_cust.bk_customer,
    11111111 AS sk_date,
    ISNULL(dim_emp.sk_employee, 0),
    dsa_ord.[status],
    dsa_prod.standard_cost,
    dsa_ite.unit_price, dsa_ite.quantity,
    dsa_ite.unit_price * dsa_ite.quantity AS total_amount,
    (dsa_ite.unit_price - dsa_prod.standard_cost) * dsa_ite.quantity AS profit
FROM dsa.orders AS dsa_ord
    LEFT JOIN dsa.order_items AS dsa_ite ON dsa_ite.order_id = dsa_ord.order_id
    LEFT JOIN dw.DIM_product AS dim_pro ON dim_pro.bk_product=dsa_ite.product_id
    LEFT JOIN dsa.inventories AS dsa_inv ON dsa_inv.product_id= dsa_ite.product_id
    LEFT JOIN dw.DIM_warehouse AS dim_war ON dim_war.bk_warehouse=dsa_inv.warehouse_id
    LEFT JOIN dw.DIM_employee AS dim_emp ON dim_emp.bk_employee=dsa_ord.salesman_id
    LEFT JOIN dw.DIM_customer AS dim_cust ON dim_cust.bk_customer=dsa_ord.customer_id
    LEFT JOIN dsa.products AS dsa_prod ON dsa_prod.product_id= dsa_ite.product_id
GO


--FACT CANCELATION
-- DELETE FROM dw.FACT_cancellation
-- GO
-- INSERT INTO dw.FACT_cancellation
SELECT dim_pro.sk_product,
    dim_cust.sk_customer,
    11111111 AS sk_date,
    dim_emp.sk_employee,
    ISNULL(dim_war.bk_warehouse, 0),
    dsa_ord.order_id,
    CASE WHEN dsa_ord.shipped_date IS NULL THEN N'Pending' ELSE N'Shipped' END AS last_status,
    dsa_excel.was_received,
    DATEDIFF(DAY, dsa_ord.order_date, dsa_excel.delivery_date) AS n_days_until_cancelation
FROM dsa.orders AS dsa_ord
    LEFT JOIN dsa.deliveries_excel AS dsa_excel ON dsa_ord.order_id=dsa_excel.order_id
    LEFT JOIN dsa.order_items AS dsa_ite ON dsa_ite.order_id = dsa_ord.order_id
    LEFT JOIN dw.DIM_product AS dim_pro ON dim_pro.bk_product=dsa_ite.product_id
    LEFT JOIN dw.DIM_customer AS dim_cust ON dim_cust.bk_customer=dsa_ord.customer_id
    LEFT JOIN dw.DIM_employee AS dim_emp ON dim_emp.bk_employee=dsa_ord.salesman_id
    LEFT JOIN dsa.inventories AS dsa_inv ON dsa_inv.product_id= dsa_ite.product_id
    LEFT JOIN dw.DIM_warehouse AS dim_war ON dim_war.bk_warehouse=dsa_inv.warehouse_id
WHERE dsa_ord.status=N'Canceled'
ORDER By dsa_ord.order_id
GO


--FACT ORDER PAYMENT
-- DELETE FROM dw.FACT_order_payment
-- GO
-- INSERT INTO dw.FACT_order_payment
SELECT dim_cust.sk_customer,
    11 AS sk_payment_date,
    11 AS sk_order_date,
    11 AS sk_limit_payment_date,
    dim_emp.sk_employee,
    dsa_payM.method AS payment_method,
    dsa_ord.order_id,
    dsa_pay.payment_id,
    dsa_ord.[status] AS order_satus,
    CASE WHEN dsa_ite.unit_price * dsa_ite.quantity <= (SELECT ISNULL(SUM([value]), 0)
    FROM dsa.payments AS dsa_payA
    WHERE order_id=dsa_pay.order_id AND ( dsa_pay.payment_date >= dsa_payA.payment_date)) THEN 1 ELSE 0 END AS payment_order_completed,
    dsa_pay.[value],
    (SELECT ISNULL(SUM([value]), 0)
    FROM dsa.payments AS dsa_payA
    WHERE order_id=dsa_pay.order_id AND ( dsa_pay.payment_date >= dsa_payA.payment_date)) AS paid_amount
FROM dsa.payments AS dsa_pay
    LEFT JOIN dsa.orders AS dsa_ord ON dsa_ord.order_id=dsa_pay.order_id
    LEFT JOIN dw.DIM_customer AS dim_cust ON dim_cust.bk_customer=dsa_ord.customer_id
    LEFT JOIN dw.DIM_employee AS dim_emp ON dim_emp.bk_employee=dsa_ord.salesman_id
    JOIN dsa.payment_methods AS dsa_payM ON dsa_payM.method_id=dsa_pay.method_id
    LEFT JOIN dsa.order_items AS dsa_ite ON dsa_ite.order_id = dsa_ord.order_id
    LEFT JOIN dw.DIM_product AS dim_pro ON dim_pro.bk_product=dsa_ite.product_id
ORDER BY dsa_pay.order_id
