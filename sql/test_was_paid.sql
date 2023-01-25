DECLARE @order_id int = 11
DECLARE @total_paid decimal(9,2)
DECLARE @total_amount decimal(9,2)

SELECT @total_paid =(SELECT ISNULL(SUM([value]), 0) FROM dsa.payments WHERE order_id=@order_id);

SELECT @total_amount =(
SELECT 
     dsa_ite.unit_price * dsa_ite.quantity AS was_fully_paid 
FROM dsa.orders dsa_ord
    JOIN dsa.order_items AS dsa_ite ON dsa_ite.order_id = dsa_ord.order_id
    JOIN dsa.inventories AS dsa_inv ON dsa_inv.product_id= dsa_ite.product_id
WHERE dsa_ord.shipped_date IS NOT NULL AND dsa_ord.order_id=@order_id)


SELECT @order_id AS order_id, @total_paid AS total_paid, @total_amount AS total_order, CASE WHEN @total_paid +0.5 >= @total_amount THEN 1 ELSE 0 END AS was_fully_paid

SELECT CASE WHEN 23691.31 >= 23691.30   THEN 1 ELSE 0 END