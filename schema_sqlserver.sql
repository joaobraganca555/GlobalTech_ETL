USE master
GO

--Caso a database esteja em uso
IF EXISTS (SELECT name
FROM sys.databases
WHERE name = N'GlobalTech')
ALTER DATABASE GlobalTech SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE  IF EXISTS GlobalTech
GO

CREATE DATABASE GlobalTech
GO

USE GlobalTech
GO

CREATE TABLE regions
(
  region_id int PRIMARY KEY ,
  region_name VARCHAR( 50 ) NOT NULL
);
-- countries table
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE countries
(
  country_id CHAR(2) PRIMARY KEY  ,
  country_name VARCHAR( 40 ) NOT NULL,
  region_id int                 ,
  -- fk
  CONSTRAINT fk_countries_regions FOREIGN KEY( region_id )
      REFERENCES regions( region_id ) 
      ON DELETE CASCADE
);

-- location
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE locations
(
  location_id int PRIMARY KEY,
  address VARCHAR( 255 ) NOT NULL,
  postal_code VARCHAR( 20 )          ,
  city VARCHAR( 50 )          ,
  state VARCHAR( 50 )          ,
  country_id CHAR(2)              ,
  -- fk
  CONSTRAINT fk_locations_countries 
      FOREIGN KEY( country_id )
      REFERENCES countries( country_id ) 
      ON DELETE CASCADE
);
-- warehouses
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE warehouses
(
  warehouse_id int PRIMARY KEY,
  warehouse_name VARCHAR( 255 ) ,
  location_id int,
  -- fk
  CONSTRAINT fk_warehouses_locations 
      FOREIGN KEY( location_id )
      REFERENCES locations( location_id ) 
      ON DELETE CASCADE
);
-- employees
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE employees
(
  employee_id int PRIMARY KEY,
  first_name VARCHAR( 255 ) NOT NULL,
  last_name VARCHAR( 255 ) NOT NULL,
  email VARCHAR( 255 ) NOT NULL,
  phone VARCHAR( 50 ) NOT NULL ,
  hire_date DATETIME NOT NULL          ,
  manager_id int        ,
  -- fk
  job_title VARCHAR( 255 ) NOT NULL,
  corporate_id int NOT NULL
    CONSTRAINT fk_employees_manager 
        FOREIGN KEY( manager_id )
        REFERENCES employees( employee_id )
        ON DELETE NO ACTION
);
-- product category
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE product_categories
(
  category_id int PRIMARY KEY,
  category_name VARCHAR( 255 ) NOT NULL
);

-- products table
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE products
(
  product_id int PRIMARY KEY,
  product_name VARCHAR( 255 ) NOT NULL,
  description VARCHAR( 2000 )        ,
  standard_cost DECIMAL( 9, 2 )          ,
  list_price DECIMAL( 9, 2 )          ,
  category_id int NOT NULL         ,
  CONSTRAINT fk_products_categories 
      FOREIGN KEY( category_id )
      REFERENCES product_categories( category_id ) 
      ON DELETE CASCADE
);
-- customers
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE customers
(
  customer_id int PRIMARY KEY,
  name VARCHAR( 255 ) NOT NULL,
  address VARCHAR( 255 )         ,
  website VARCHAR( 255 )         ,
  credit_limit DECIMAL( 8, 2 )
);
-- contacts
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE contacts
(
  contact_id int PRIMARY KEY,
  first_name VARCHAR( 255 ) NOT NULL,
  last_name VARCHAR( 255 ) NOT NULL,
  email VARCHAR( 255 ) NOT NULL,
  phone VARCHAR( 20 )          ,
  customer_id int                  ,
  CONSTRAINT fk_contacts_customers 
      FOREIGN KEY( customer_id )
      REFERENCES customers( customer_id ) 
      ON DELETE CASCADE
);


CREATE TABLE payment_methods
(
  [method_id] int PRIMARY KEY,
  [method] VARCHAR(20) NOT NULL
);

CREATE TABLE payments
(
  [payment_id] int PRIMARY KEY,
  [order_id] int NOT NULL,
  [method_id] int NOT NULL,
  [payment_date] DATETIME NOT NULL,
  [value] DECIMAL(8,2) NOT NULL
    CONSTRAINT fk_payments_orders FOREIGN KEY( order_id )
    REFERENCES orders ( order_id ),
  CONSTRAINT fk_payments_payment_methods FOREIGN KEY( method_id )
    REFERENCES payment_methods( method_id )
);

-- orders table
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE orders
(
  order_id int PRIMARY KEY,
  customer_id INT NOT NULL,
  status VARCHAR( 20 ) NOT NULL ,
  salesman_id INT,
  order_date DATETIME NOT NULL,
  shipped_date DATETIME NOT NULL,
  canceled_date DATETIME NOT NULL,
  limit_payment_date DATETIME NOT NULL,
  CONSTRAINT fk_orders_customers 
      FOREIGN KEY( customer_id )
      REFERENCES customers( customer_id )
      ON DELETE CASCADE,
  CONSTRAINT fk_orders_employees 
      FOREIGN KEY( salesman_id )
      REFERENCES employees( employee_id ) 
      ON DELETE SET NULL
);
-- order items
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE order_items
(
  order_id int                                ,
  -- fk
  item_id BIGINT                                ,
  product_id int NOT NULL                       ,
  -- fk
  quantity DECIMAL( 8, 2 ) NOT NULL                        ,
  unit_price DECIMAL( 8, 2 ) NOT NULL                        ,
  CONSTRAINT pk_order_items 
      PRIMARY KEY( order_id, item_id ),
  CONSTRAINT fk_order_items_products 
      FOREIGN KEY( product_id )
      REFERENCES products( product_id ) 
      ON DELETE CASCADE,
  CONSTRAINT fk_order_items_orders 
      FOREIGN KEY( order_id )
      REFERENCES orders( order_id ) 
      ON DELETE CASCADE
);
-- inventories
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE inventories
(
  product_id int        ,
  -- fk
  warehouse_id int        ,
  -- fk
  quantity INT NOT NULL,
  CONSTRAINT pk_inventories 
      PRIMARY KEY( product_id, warehouse_id ),
  CONSTRAINT fk_inventories_products 
      FOREIGN KEY( product_id )
      REFERENCES products( product_id ) 
      ON DELETE CASCADE,
  CONSTRAINT fk_inventories_warehouses 
      FOREIGN KEY( warehouse_id )
      REFERENCES warehouses( warehouse_id ) 
      ON DELETE CASCADE
);