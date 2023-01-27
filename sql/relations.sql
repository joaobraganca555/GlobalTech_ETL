USE DW_GlobalTech



ALTER TABLE [dw].[FACT_order] ADD CONSTRAINT fk_fact_order_warehouse FOREIGN KEY ([sk_warehouse]) REFERENCES [dw].[DIM_warehouse] ([sk_warehouse]);
GO
ALTER TABLE [dw].[FACT_order] ADD CONSTRAINT fk_fact_order_employee FOREIGN KEY ([sk_employee]) REFERENCES [dw].[DIM_employee] ([sk_employee]);
GO
ALTER TABLE [dw].[FACT_order] ADD CONSTRAINT fk_fact_order_date FOREIGN KEY ([sk_date]) REFERENCES [dw].[DIM_date] ([sk_date]);
GO
ALTER TABLE [dw].[FACT_order] ADD CONSTRAINT fk_fact_order_customer FOREIGN KEY ([sk_customer]) REFERENCES [dw].[DIM_customer] ([sk_customer]);
GO
ALTER TABLE [dw].[FACT_order] ADD CONSTRAINT fk_fact_order_product FOREIGN KEY ([sk_product]) REFERENCES [dw].[DIM_product] ([sk_product]);
GO
ALTER TABLE [dw].[DIM_employee] ADD CONSTRAINT fk_dim_employee_manager FOREIGN KEY ([manager]) REFERENCES [dw].[DIM_employee] ([sk_employee]);
GO
ALTER TABLE [dw].[FACT_order_payment] ADD CONSTRAINT fk_fact_order_payment_employee FOREIGN KEY ([sk_employee]) REFERENCES [dw].[DIM_employee] ([sk_employee]);
GO
ALTER TABLE [dw].[FACT_order_payment] ADD CONSTRAINT fk_fact_order_payment_payment_date FOREIGN KEY ([sk_payment_date]) REFERENCES [dw].[DIM_date] ([sk_date]);
GO
ALTER TABLE [dw].[FACT_order_payment] ADD CONSTRAINT fk_fact_order_payment_order_date FOREIGN KEY ([sk_order_date]) REFERENCES [dw].[DIM_date] ([sk_date]);
GO
ALTER TABLE [dw].[FACT_order_payment] ADD CONSTRAINT fk_fact_order_payment_limit_payment_date FOREIGN KEY ([sk_limit_payment_date]) REFERENCES [dw].[DIM_date] ([sk_date]);
GO
ALTER TABLE [dw].[FACT_order_payment] ADD CONSTRAINT fk_fact_order_payment_customer FOREIGN KEY ([sk_customer]) REFERENCES [dw].[DIM_customer] ([sk_customer]);
GO
ALTER TABLE [dw].[FACT_shippment] ADD CONSTRAINT fk_warehouse_shipment FOREIGN KEY ([sk_warehouse]) REFERENCES [dw].[DIM_warehouse] ([sk_warehouse])
GO
ALTER TABLE [dw].[FACT_shippment] ADD CONSTRAINT fk_date_shipment FOREIGN KEY ([sk_date]) REFERENCES [dw].[DIM_date] ([sk_date])
GO
ALTER TABLE [dw].[FACT_shippment] ADD CONSTRAINT fk_customer_shipment FOREIGN KEY ([sk_customer]) REFERENCES [dw].[DIM_customer] ([sk_customer])
GO
ALTER TABLE [dw].[FACT_shippment] ADD CONSTRAINT fk_product_shipment FOREIGN KEY ([sk_product]) REFERENCES [dw].[DIM_product] ([sk_product])
GO
ALTER TABLE [dw].[FACT_cancellation] ADD CONSTRAINT fk_employee_cancel FOREIGN KEY ([sk_employee]) REFERENCES [dw].[DIM_employee] ([sk_employee])
GO
ALTER TABLE [dw].[FACT_cancellation] ADD CONSTRAINT fk_product_cancel FOREIGN KEY ([sk_product]) REFERENCES [dw].[DIM_product] ([sk_product])
GO
ALTER TABLE [dw].[FACT_cancellation] ADD CONSTRAINT fk_date_cancel FOREIGN KEY ([sk_date]) REFERENCES [dw].[DIM_date] ([sk_date])
GO
ALTER TABLE [dw].[FACT_cancellation] ADD CONSTRAINT fk_customer_cancel FOREIGN KEY ([sk_customer]) REFERENCES [dw].[DIM_customer] ([sk_customer])
GO
ALTER TABLE [dw].[FACT_cancellation] ADD CONSTRAINT fk_warehouse_cancel FOREIGN KEY ([sk_warehouse]) REFERENCES [dw].[DIM_warehouse] ([sk_warehouse])


-- ALTER TABLE [dw].[FACT_order] CHECK CONSTRAINT fk_fact_order_warehouse 
-- ALTER TABLE [dw].[FACT_order] CHECK CONSTRAINT fk_fact_order_employee 
-- ALTER TABLE [dw].[FACT_order] CHECK CONSTRAINT fk_fact_order_date 
-- ALTER TABLE [dw].[FACT_order] CHECK CONSTRAINT fk_fact_order_customer 
-- ALTER TABLE [dw].[FACT_order] CHECK CONSTRAINT fk_fact_order_product 
-- ALTER TABLE [dw].[DIM_employee] CHECK CONSTRAINT fk_dim_employee_manager 
-- ALTER TABLE [dw].[FACT_order_payment] CHECK CONSTRAINT fk_fact_order_payment_employee 
-- ALTER TABLE [dw].[FACT_order_payment] CHECK CONSTRAINT fk_fact_order_payment_payment_date 
-- ALTER TABLE [dw].[FACT_order_payment] CHECK CONSTRAINT fk_fact_order_payment_order_date 
-- ALTER TABLE [dw].[FACT_order_payment] CHECK CONSTRAINT fk_fact_order_payment_limit_payment_date 
-- ALTER TABLE [dw].[FACT_order_payment] CHECK CONSTRAINT fk_fact_order_payment_customer 
-- ALTER TABLE [dw].[FACT_shippment] CHECK CONSTRAINT fk_warehouse_shipment 
-- ALTER TABLE [dw].[FACT_shippment] CHECK CONSTRAINT fk_date_shipment
-- ALTER TABLE [dw].[FACT_shippment] CHECK CONSTRAINT fk_customer_shipment 
-- ALTER TABLE [dw].[FACT_shippment] CHECK CONSTRAINT fk_product_shipment 
-- ALTER TABLE [dw].[FACT_cancellation] CHECK CONSTRAINT fk_employee_cancel
-- ALTER TABLE [dw].[FACT_cancellation] CHECK CONSTRAINT fk_product_cancel 
-- ALTER TABLE [dw].[FACT_cancellation] CHECK CONSTRAINT fk_date_cancel 
-- ALTER TABLE [dw].[FACT_cancellation] CHECK CONSTRAINT fk_customer_cancel 
-- ALTER TABLE [dw].[FACT_cancellation] CHECK CONSTRAINT fk_warehouse_cancel 