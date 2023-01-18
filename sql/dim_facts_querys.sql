-- DIM Customer
SELECT 
	cust.customer_id as bk_customer,
	phone,
	name,
	address,
	credit_limit
FROM dsa.customers as cust 
	JOIN dsa.contacts as cont on cust.customer_id = cont.customer_id

-- DIM Product
SELECT 
	prod.product_id,
	prod.product_name, 
	categ.category_name,
	prod.description 
FROM dsa.products as prod 
	JOIN dsa.product_categories as categ ON prod.category_id = categ.category_id

-- DIM Warehouse
SELECT 
	w.warehouse_id,
	l.city,
	w.warehouse_name,
	l.state,
	c.country_name,
	r.region_name,
	l.postal_code
FROM dsa.warehouses as w 
	JOIN dsa.locations as l on w.location_id = l.location_id 
	JOIN dsa.countries as c on l.country_id = c.country_id 
	JOIN dsa.regions as r on c.region_id = r.region_id