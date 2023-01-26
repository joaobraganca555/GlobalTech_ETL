USE GlobalTech
GO

ALTER TABLE countries NOCHECK CONSTRAINT fk_countries_regions;
ALTER TABLE locations NOCHECK CONSTRAINT fk_locations_countries;
ALTER TABLE warehouses NOCHECK CONSTRAINT fk_warehouses_locations;
ALTER TABLE employees NOCHECK CONSTRAINT fk_employees_manager;
ALTER TABLE products NOCHECK CONSTRAINT fk_products_categories;
ALTER TABLE contacts NOCHECK CONSTRAINT fk_contacts_customers;
ALTER TABLE orders NOCHECK CONSTRAINT fk_orders_customers;
ALTER TABLE orders NOCHECK CONSTRAINT fk_orders_employees;
ALTER TABLE order_items NOCHECK CONSTRAINT fk_order_items_products;
ALTER TABLE order_items NOCHECK CONSTRAINT fk_order_items_orders;
ALTER TABLE inventories NOCHECK CONSTRAINT fk_inventories_products;
ALTER TABLE inventories NOCHECK CONSTRAINT fk_inventories_warehouses;
ALTER TABLE payments NOCHECK CONSTRAINT fk_payments_orders;
ALTER TABLE payments NOCHECK CONSTRAINT fk_payments_payment_methods;

DELETE FROM contacts
DELETE FROM countries
DELETE FROM customers
DELETE FROM payments
DELETE FROM payment_methods
DELETE FROM regions
DELETE FROM warehouses
DELETE FROM employees
DELETE FROM product_categories
DELETE FROM products
DELETE FROM inventories
DELETE FROM order_items
DELETE FROM orders
DELETE FROM locations
DELETE FROM contacts

Insert into REGIONS (REGION_ID,REGION_NAME) values (1,'Europe');
Insert into REGIONS (REGION_ID,REGION_NAME) values (2,'Americas');
Insert into REGIONS (REGION_ID,REGION_NAME) values (3,'Asia');
Insert into REGIONS (REGION_ID,REGION_NAME) values (4,'Middle East and Africa');

Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AR','Argentina',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AU','Australia',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BE','Belgium',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BR','Brazil',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CA','Canada',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CH','Switzerland',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CN','China',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DE','Germany',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DK','Denmark',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('EG','Egypt',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('FR','France',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IL','Israel',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IN','India',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IT','Italy',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('JP','Japan',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('KW','Kuwait',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ML','Malaysia',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('MX','Mexico',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NG','Nigeria',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NL','Netherlands',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('SG','Singapore',3);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('UK','United Kingdom',1);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('US','United States of America',2);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZM','Zambia',4);
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZW','Zimbabwe',4);

Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (1,'1297 Via Cola di Rie','00989','Roma',null,'IT');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (2,'93091 Calle della Testa','10934','Venice',null,'IT');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (3,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (4,'9450 Kamiya-cho','6823','Hiroshima',null,'JP');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (5,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (6,'2011 Interiors Blvd','99236','South San Francisco','California','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (7,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (8,'2004 Charade Rd','98199','Seattle','Washington','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (9,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (10,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (11,'40-5-12 Laogianggen','190518','Beijing',null,'CN');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (12,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (13,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (14,'198 Clementi North','540198','Singapore',null,'SG');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (15,'8204 Arthur St',null,'London',null,'UK');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (16,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (17,'9702 Chester Road','09629850293','Stretford','Manchester','UK');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (18,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (19,'Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (20,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (21,'Murtenstrasse 921','3095','Bern','BE','CH');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (22,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (23,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');

Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (1,'Southlake, Texas',5);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (2,'San Francisco',6);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (3,'New Jersey',7);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (4,'Seattle, Washington',8);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (5,'Toronto',9);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (6,'Sydney',13);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (7,'Mexico City',23);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (8,'Beijing',11);
Insert into WAREHOUSES (WAREHOUSE_ID,WAREHOUSE_NAME,LOCATION_ID) values (9,'Bombay',12);

Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (1,'Tommy','Bailey','tommy.bailey@example.com','515.123.4567',convert(DATETIME, '17-JUN-16',101),null,'President');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (2,'Jude','Rivera','jude.rivera@example.com','515.123.4568',convert(DATETIME, '21-SEP-16',101),1,'Administration Vice President');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (3,'Blake','Cooper','blake.cooper@example.com','515.123.4569',convert(DATETIME, '13-JAN-16',101),1,'Administration Vice President');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (4,'Louie','Richardson','louie.richardson@example.com','590.423.4567',convert(DATETIME, '03-JAN-16',101),3,'Programmer');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (5,'Nathan','Cox','nathan.cox@example.com','590.423.4568',convert(DATETIME, '21-MAY-16',101),4,'Programmer');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (6,'Gabriel','Howard','gabriel.howard@example.com','590.423.4569',convert(DATETIME, '25-JUN-16',101),4,'Programmer');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (7,'Charles','Ward','charles.ward@example.com','590.423.4560',convert(DATETIME, '05-FEB-16',101),4,'Programmer');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (8,'Bobby','Torres','bobby.torres@example.com','590.423.5567',convert(DATETIME, '07-FEB-16',101),4,'Programmer');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (9,'Mohammad','Peterson','mohammad.peterson@example.com','515.124.4569',convert(DATETIME, '17-AUG-16',101),2,'Finance Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (10,'Ryan','Gray','ryan.gray@example.com','515.124.4169',convert(DATETIME, '16-AUG-16',101),9,'Accountant');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (11,'Tyler','Ramirez','tyler.ramirez@example.com','515.124.4269',convert(DATETIME, '28-SEP-16',101),9,'Accountant');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (12,'Elliott','James','elliott.james@example.com','515.124.4369',convert(DATETIME, '30-SEP-16',101),9,'Accountant');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (13,'Albert','Watson','albert.watson@example.com','515.124.4469',convert(DATETIME, '07-MAR-16',101),9,'Accountant');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (14,'Elliot','Brooks','elliot.brooks@example.com','515.124.4567',convert(DATETIME, '07-DEC-16',101),9,'Accountant');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (15,'Rory','Kelly','rory.kelly@example.com','515.127.4561',convert(DATETIME, '07-DEC-16',101),1,'Purchasing Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (16,'Alex','Sanders','alex.sanders@example.com','515.127.4562',convert(DATETIME, '18-MAY-16',101),15,'Purchasing Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (17,'Frederick','Price','frederick.price@example.com','515.127.4563',convert(DATETIME, '24-DEC-16',101),15,'Purchasing Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (18,'Ollie','Bennett','ollie.bennett@example.com','515.127.4564',convert(DATETIME, '24-JUL-16',101),15,'Purchasing Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (19,'Louis','Wood','louis.wood@example.com','515.127.4565',convert(DATETIME, '15-NOV-16',101),15,'Purchasing Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (20,'Dexter','Barnes','dexter.barnes@example.com','515.127.4566',convert(DATETIME, '10-AUG-16',101),15,'Purchasing Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (21,'Jaxon','Ross','jaxon.ross@example.com','650.123.1234',convert(DATETIME, '18-JUL-16',101),1,'Stock Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (22,'Liam','Henderson','liam.henderson@example.com','650.123.2234',convert(DATETIME, '10-APR-16',101),1,'Stock Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (23,'Jackson','Coleman','jackson.coleman@example.com','650.123.3234',convert(DATETIME, '01-MAY-16',101),1,'Stock Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (24,'Callum','Jenkins','callum.jenkins@example.com','650.123.4234',convert(DATETIME, '10-OCT-16',101),1,'Stock Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (25,'Ronnie','Perry','ronnie.perry@example.com','650.123.5234',convert(DATETIME, '16-NOV-16',101),1,'Stock Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (26,'Leon','Powell','leon.powell@example.com','650.124.1214',convert(DATETIME, '16-JUL-16',101),21,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (27,'Kai','Long','kai.long@example.com','650.124.1224',convert(DATETIME, '28-SEP-16',101),21,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (28,'Aaron','Patterson','aaron.patterson@example.com','650.124.1334',convert(DATETIME, '14-JAN-16',101),21,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (29,'Roman','Hughes','roman.hughes@example.com','650.124.1434',convert(DATETIME, '08-MAR-16',101),21,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (30,'Austin','Flores','austin.flores@example.com','650.124.5234',convert(DATETIME, '20-AUG-16',101),22,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (31,'Ellis','Washington','ellis.washington@example.com','650.124.6234',convert(DATETIME, '30-OCT-16',101),22,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (32,'Jamie','Butler','jamie.butler@example.com','650.124.7234',convert(DATETIME, '16-FEB-16',101),22,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (33,'Reggie','Simmons','reggie.simmons@example.com','650.124.8234',convert(DATETIME, '10-APR-16',101),22,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (34,'Seth','Foster','seth.foster@example.com','650.127.1934',convert(DATETIME, '14-JUN-16',101),23,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (35,'Carter','Gonzales','carter.gonzales@example.com','650.127.1834',convert(DATETIME, '26-AUG-16',101),23,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (36,'Felix','Bryant','felix.bryant@example.com','650.127.1734',convert(DATETIME, '12-DEC-16',101),23,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (37,'Ibrahim','Alexander','ibrahim.alexander@example.com','650.127.1634',convert(DATETIME, '06-FEB-16',101),23,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (38,'Sonny','Russell','sonny.russell@example.com','650.121.1234',convert(DATETIME, '14-JUL-16',101),24,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (39,'Kian','Griffin','kian.griffin@example.com','650.121.2034',convert(DATETIME, '26-OCT-16',101),24,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (40,'Caleb','Diaz','caleb.diaz@example.com','650.121.2019',convert(DATETIME, '12-FEB-16',101),24,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (41,'Connor','Hayes','connor.hayes@example.com','650.121.1834',convert(DATETIME, '06-APR-16',101),24,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (42,'Amelia','Myers','amelia.myers@example.com','650.121.8009',convert(DATETIME, '17-OCT-16',101),25,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (43,'Olivia','Ford','olivia.ford@example.com','650.121.2994',convert(DATETIME, '29-JAN-16',101),25,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (44,'Emily','Hamilton','emily.hamilton@example.com','650.121.2874',convert(DATETIME, '15-MAR-16',101),25,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (45,'Isla','Graham','isla.graham@example.com','650.121.2004',convert(DATETIME, '09-JUL-16',101),25,'Stock Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (46,'Ava','Sullivan','ava.sullivan@example.com','011.44.1344.429268',convert(DATETIME, '01-OCT-16',101),1,'Sales Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (47,'Ella','Wallace','ella.wallace@example.com','011.44.1344.467268',convert(DATETIME, '05-JAN-16',101),1,'Sales Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (48,'Jessica','Woods','jessica.woods@example.com','011.44.1344.429278',convert(DATETIME, '10-MAR-16',101),1,'Sales Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (49,'Isabella','Cole','isabella.cole@example.com','011.44.1344.619268',convert(DATETIME, '15-OCT-16',101),1,'Sales Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (50,'Mia','West','mia.west@example.com','011.44.1344.429018',convert(DATETIME, '29-JAN-16',101),1,'Sales Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (51,'Poppy','Jordan','poppy.jordan@example.com','011.44.1344.129268',convert(DATETIME, '30-JAN-16',101),46,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (52,'Sophie','Owens','sophie.owens@example.com','011.44.1344.345268',convert(DATETIME, '24-MAR-16',101),46,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (53,'Sophia','Reynolds','sophia.reynolds@example.com','011.44.1344.478968',convert(DATETIME, '20-AUG-16',101),46,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (54,'Lily','Fisher','lily.fisher@example.com','011.44.1344.498718',convert(DATETIME, '30-MAR-16',101),46,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (55,'Grace','Ellis','grace.ellis@example.com','011.44.1344.987668',convert(DATETIME, '09-DEC-16',101),46,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (56,'Evie','Harrison','evie.harrison@example.com','011.44.1344.486508',convert(DATETIME, '23-NOV-16',101),46,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (57,'Scarlett','Gibson','scarlett.gibson@example.com','011.44.1345.429268',convert(DATETIME, '30-JAN-16',101),47,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (58,'Ruby','Mcdonald','ruby.mcdonald@example.com','011.44.1345.929268',convert(DATETIME, '04-MAR-16',101),47,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (59,'Chloe','Cruz','chloe.cruz@example.com','011.44.1345.829268',convert(DATETIME, '01-AUG-16',101),47,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (60,'Isabelle','Marshall','isabelle.marshall@example.com','011.44.1345.729268',convert(DATETIME, '10-MAR-16',101),47,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (61,'Daisy','Ortiz','daisy.ortiz@example.com','011.44.1345.629268',convert(DATETIME, '15-DEC-16',101),47,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (62,'Freya','Gomez','freya.gomez@example.com','011.44.1345.529268',convert(DATETIME, '03-NOV-16',101),47,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (63,'Phoebe','Murray','phoebe.murray@example.com','011.44.1346.129268',convert(DATETIME, '11-NOV-16',101),48,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (64,'Florence','Freeman','florence.freeman@example.com','011.44.1346.229268',convert(DATETIME, '19-MAR-16',101),48,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (65,'Alice','Wells','alice.wells@example.com','011.44.1346.329268',convert(DATETIME, '24-JAN-16',101),48,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (66,'Charlotte','Webb','charlotte.webb@example.com','011.44.1346.529268',convert(DATETIME, '23-FEB-16',101),48,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (67,'Sienna','Simpson','sienna.simpson@example.com','011.44.1346.629268',convert(DATETIME, '24-MAR-16',101),48,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (68,'Matilda','Stevens','matilda.stevens@example.com','011.44.1346.729268',convert(DATETIME, '21-APR-16',101),48,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (69,'Evelyn','Tucker','evelyn.tucker@example.com','011.44.1343.929268',convert(DATETIME, '11-MAR-16',101),49,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (70,'Eva','Porter','eva.porter@example.com','011.44.1343.829268',convert(DATETIME, '23-MAR-16',101),49,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (71,'Millie','Hunter','millie.hunter@example.com','011.44.1343.729268',convert(DATETIME, '24-JAN-16',101),49,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (72,'Sofia','Hicks','sofia.hicks@example.com','011.44.1343.629268',convert(DATETIME, '23-FEB-16',101),49,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (73,'Lucy','Crawford','lucy.crawford@example.com','011.44.1343.529268',convert(DATETIME, '24-MAR-16',101),49,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (74,'Elsie','Henry','elsie.henry@example.com','011.44.1343.329268',convert(DATETIME, '21-APR-16',101),49,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (75,'Imogen','Boyd','imogen.boyd@example.com','011.44.1644.429267',convert(DATETIME, '11-MAY-16',101),50,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (76,'Layla','Mason','layla.mason@example.com','011.44.1644.429266',convert(DATETIME, '19-MAR-16',101),50,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (77,'Rosie','Morales','rosie.morales@example.com','011.44.1644.429265',convert(DATETIME, '24-MAR-16',101),50,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (78,'Maya','Kennedy','maya.kennedy@example.com','011.44.1644.429264',convert(DATETIME, '23-APR-16',101),50,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (79,'Esme','Warren','esme.warren@example.com','011.44.1644.429263',convert(DATETIME, '24-MAY-16',101),50,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (80,'Elizabeth','Dixon','elizabeth.dixon@example.com','011.44.1644.429262',convert(DATETIME, '04-JAN-16',101),50,'Sales Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (81,'Lola','Ramos','lola.ramos@example.com','650.507.9876',convert(DATETIME, '24-JAN-16',101),21,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (82,'Willow','Reyes','willow.reyes@example.com','650.507.9877',convert(DATETIME, '23-FEB-16',101),21,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (83,'Ivy','Burns','ivy.burns@example.com','650.507.9878',convert(DATETIME, '21-JUN-16',101),21,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (84,'Erin','Gordon','erin.gordon@example.com','650.507.9879',convert(DATETIME, '03-FEB-16',101),21,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (85,'Holly','Shaw','holly.shaw@example.com','650.509.1876',convert(DATETIME, '27-JAN-16',101),22,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (86,'Emilia','Holmes','emilia.holmes@example.com','650.509.2876',convert(DATETIME, '20-FEB-16',101),22,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (87,'Molly','Rice','molly.rice@example.com','650.509.3876',convert(DATETIME, '24-JUN-16',101),22,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (88,'Ellie','Robertson','ellie.robertson@example.com','650.509.4876',convert(DATETIME, '07-FEB-16',101),22,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (89,'Jasmine','Hunt','jasmine.hunt@example.com','650.505.1876',convert(DATETIME, '14-JUN-16',101),23,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (90,'Eliza','Black','eliza.black@example.com','650.505.2876',convert(DATETIME, '13-AUG-16',101),23,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (91,'Lilly','Daniels','lilly.daniels@example.com','650.505.3876',convert(DATETIME, '11-JUL-16',101),23,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (92,'Abigail','Palmer','abigail.palmer@example.com','650.505.4876',convert(DATETIME, '19-DEC-16',101),23,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (93,'Georgia','Mills','georgia.mills@example.com','650.501.1876',convert(DATETIME, '04-FEB-16',101),24,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (94,'Maisie','Nichols','maisie.nichols@example.com','650.501.2876',convert(DATETIME, '03-MAR-16',101),24,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (95,'Eleanor','Grant','eleanor.grant@example.com','650.501.3876',convert(DATETIME, '01-JUL-16',101),24,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (96,'Hannah','Knight','hannah.knight@example.com','650.501.4876',convert(DATETIME, '17-MAR-16',101),24,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (97,'Harriet','Ferguson','harriet.ferguson@example.com','650.507.9811',convert(DATETIME, '24-APR-16',101),25,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (98,'Amber','Rose','amber.rose@example.com','650.507.9822',convert(DATETIME, '23-MAY-16',101),25,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (99,'Bella','Stone','bella.stone@example.com','650.507.9833',convert(DATETIME, '21-JUN-16',101),25,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (100,'Thea','Hawkins','thea.hawkins@example.com','650.507.9844',convert(DATETIME, '13-JAN-16',101),25,'Shipping Clerk');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (101,'Annabelle','Dunn','annabelle.dunn@example.com','515.123.4444',convert(DATETIME, '17-SEP-16',101),2,'Administration Assistant');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (102,'Emma','Perkins','emma.perkins@example.com','515.123.5555',convert(DATETIME, '17-FEB-16',101),1,'Marketing Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (103,'Amelie','Hudson','amelie.hudson@example.com','603.123.6666',convert(DATETIME, '17-AUG-16',101),102,'Marketing Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (104,'Harper','Spencer','harper.spencer@example.com','515.123.7777',convert(DATETIME, '07-JUN-16',101),2,'Human Resources Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (105,'Gracie','Gardner','gracie.gardner@example.com','515.123.8888',convert(DATETIME, '07-JUN-16',101),2,'Public Relations Representative');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (106,'Rose','Stephens','rose.stephens@example.com','515.123.8080',convert(DATETIME, '07-JUN-16',101),2,'Accounting Manager');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE) values (107,'Summer','Payne','summer.payne@example.com','515.123.8181',convert(DATETIME, '07-JUN-16',101),106,'Public Accountant');

Insert into PRODUCT_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (1,'CPU');
Insert into PRODUCT_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (2,'Video Card');
Insert into PRODUCT_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (3,'RAM');
Insert into PRODUCT_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (4,'Mother Board');
Insert into PRODUCT_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (5,'Storage');

Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (1,'G.Skill Ripjaws V Series','Speed:DDR4-3000,Type:288-pin DIMM,CAS:15Module:8x8GBSize:64GB',450.36,640.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (2,'Intel Xeon E5-2697 V4','Speed:2.3GHz,Cores:18,TDP:145W',2144.4,2554.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (3,'Corsair CB-9060011-WW','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',573.51,799.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (4,'AMD 100-505989','Chipset:FirePro W9100,Memory:32GBCore Clock:930MHz',2128.67,2699.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (5,'PNY VCQK6000-PB','Chipset:Quadro K6000,Memory:12GBCore Clock:902MHz',1740.31,2290.79,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (6,'Zotac ZT-P10810A-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.48GHz',702.35,849.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (7,'G.Skill Ripjaws V Series','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:8x8GBSize:64GB',602.4,680.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (8,'Intel Xeon E5-1650 V4','Speed:3.6GHz,Cores:6,TDP:140W',535.47,601.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (9,'Intel Xeon E5-2640 V4','Speed:2.4GHz,Cores:10,TDP:90W',738.71,899.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (10,'Crucial','Speed:DDR4-2133,Type:288-pin DIMM,CAS:15Module:2x16GBSize:32GB',580.33,811.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (11,'PNY VCQP5000-PB','Chipset:Quadro P5000,Memory:16GBCore Clock:1.61GHz',1602.21,2015.11,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (12,'Gigabyte GV-N108TAORUSX W-11GD','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.63GHz',596.05,824.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (13,'G.Skill Ripjaws V Series','Speed:DDR4-3333,Type:288-pin DIMM,CAS:16Module:4x16GBSize:64GB',618.63,704.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (14,'G.Skill Ripjaws V Series','Speed:DDR4-3333,Type:288-pin DIMM,CAS:16Module:4x16GBSize:64GB',633.65,704.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (15,'G.Skill Trident Z','Speed:DDR4-3466,Type:288-pin DIMM,CAS:16Module:4x16GBSize:64GB',601.56,725.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (16,'Intel Core i7-6900K','Speed:3.2GHz,Cores:8,TDP:140W',792.89,889.89,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (17,'Corsair Vengeance LPX','Speed:DDR4-3333,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',595.42,699.01,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (18,'Crucial','Speed:DDR4-2400,Type:288-pin DIMM,CAS:17Module:1x64GBSize:64GB',604.04,799,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (19,'Intel Core i7-6950X (OEM/Tray)','Speed:3.0GHz,Cores:10,TDP:140W',1479.56,1704.37,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (20,'Corsair Dominator Platinum','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',616.53,719.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (21,'Corsair Dominator Platinum','Speed:DDR4-3466,Type:288-pin DIMM,CAS:16Module:4x16GBSize:64GB',609.89,749.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (22,'Seagate ST3000DM008','Series:Barracuda,Type:7200RPM,Capacity:3TB,Cache:64MB',61.63,83.61,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (23,'Western Digital WDS250G1B0A','Series:Blue,Type:SSD,Capacity:250GB,Cache:N/A',72.54,89.89,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (24,'Seagate ST2000DM006','Series:Barracuda,Type:7200RPM,Capacity:2TB,Cache:64MB',47.93,66.89,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (25,'Samsung MZ-75E250B/AM','Series:850 EVO-Series,Type:SSD,Capacity:250GB,Cache:N/A',87.98,104.88,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (26,'Samsung MZ-75E500B/AM','Series:850 EVO-Series,Type:SSD,Capacity:500GB,Cache:N/A',157.81,178.09,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (27,'Intel Core i7-3960X Extreme Edition','Speed:3.3GHz,Cores:6,TDP:130W',573.41,800.74,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (28,'Supermicro X9SRH-7TF','CPU:LGA2011,Form Factor:ATX,RAM Slots:8,Max RAM:64GB',411.64,479.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (29,'Corsair Vengeance LPX','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',571.7,645.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (30,'G.Skill Ripjaws V Series','Speed:DDR4-2800,Type:288-pin DIMM,CAS:14Module:4x16GBSize:64GB',452.54,645.2,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (31,'Supermicro MBD-X10DAX','CPU:LGA2011-3 x 2,Form Factor:EATX,RAM Slots:16,Max RAM:',385.24,443.72,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (32,'ASRock X99 Extreme11','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:128GB',380.55,469.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (33,'ADATA ASU800SS-128GT-C','Series:Ultimate SU800,Type:SSD,Capacity:128GB,Cache:N/A',37.78,52.65,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (34,'Asus KGPE-D16','CPU:G34 x 2,Form Factor:SSI EEB,RAM Slots:16,Max RAM:256GB',360.72,417.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (35,'Corsair Dominator Platinum','Speed:DDR4-2800,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',1131.68,1314.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (36,'Corsair Vengeance LPX','Speed:DDR4-3000,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',912.98,1299.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (37,'Corsair Dominator Platinum','Speed:DDR4-2666,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',1068.66,1264.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (38,'Corsair Vengeance LPX','Speed:DDR4-2400,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',1019.51,1199.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (39,'ASRock EP2C602-4L/D16','CPU:LGA2011 x 2,Form Factor:SSI EEB,RAM Slots:16,Max RAM:512GB',225.47,301.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (40,'MSI Z170A KRAIT GAMING 3X','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',245.4,299.89,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (41,'MSI Z170 Krait Gaming','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',231.58,299.89,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (42,'MSI Z170A KRAIT GAMING','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',262.4,299.89,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (43,'Asus MAXIMUS IX CODE','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',266.15,298.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (44,'Seagate ST1000DM010','Series:BarraCuda,Type:7200RPM,Capacity:1TB,Cache:64MB',42.18,49.37,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (45,'Intel Xeon E5-2685 V3 (OEM/Tray)','Speed:2.6GHz,Cores:12,TDP:120W',2012.11,2501.69,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (46,'Intel Xeon E5-2695 V3 (OEM/Tray)','Speed:2.3GHz,Cores:14,TDP:120W',1925.13,2431.95,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (47,'Intel Xeon E5-2697 V2','Speed:2.7GHz,Cores:12,TDP:130W',2101.59,2377.09,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (48,'AMD FirePro S7000','Chipset:FirePro S7000,Memory:4GBCore Clock:950MHz',936.42,1218.5,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (49,'Samsung MZ-75E4T0B','Series:850 EVO,Type:SSD,Capacity:4TB,Cache:4GB',1153.64,1499.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (50,'Intel SSDPECME040T401','Series:DC P3608,Type:SSD,Capacity:4TB,Cache:N/A',7123.66,8867.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (51,'Intel Xeon E5-2695 V4','Speed:2.1GHz,Cores:18,TDP:120W',1780.35,2269.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (52,'Intel Xeon E5-2670 V3','Speed:2.3GHz,Cores:12,TDP:120W',1453.94,1676.98,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (53,'Intel Core 2 Extreme QX6800','Speed:2.93GHz,Cores:4,TDP:100W',787.72,1003.98,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (54,'Intel Xeon E5-1660 V3 (OEM/Tray)','Speed:3.0GHz,Cores:8,TDP:140W',914.52,1019.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (55,'Crucial CT525MX300SSD4','Series:MX300,Type:SSD,Capacity:525GB,Cache:N/A',121.92,150.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (56,'Western Digital WD2500AAJS','Series:Caviar Blue,Type:7200RPM,Capacity:250GB,Cache:8MB',15.23,16.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (57,'Western Digital WD20EZRZ','Series:Blue,Type:5400RPM,Capacity:2TB,Cache:64MB',58.01,67.34,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (58,'Gigabyte GV-N108TAORUS X-11GD','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.61GHz',688.35,784.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (59,'Intel Core i7-5960X (OEM/Tray)','Speed:3.0GHz,Cores:8,TDP:140W',879.8,977.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (60,'Hitachi HUA723020ALA640','Series:Ultrastar 7K3000,Type:7200RPM,Capacity:2TB,Cache:64MB',45.18,59.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (61,'Asus PRIME X299-DELUXE','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',409.92,487.3,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (62,'Intel DP35DPM','CPU:LGA775,Form Factor:ATX,RAM Slots:4,Max RAM:8GB',626.22,789.79,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (63,'Asus RAMPAGE V EXTREME','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:64GB',459,572.96,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (64,'Supermicro H8DG6-F','CPU:G34 x 2,Form Factor:EATX,RAM Slots:16,Max RAM:512GB',416.64,525.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (65,'Corsair Dominator Platinum','Speed:DDR4-2400,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',1002.47,1199.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (66,'Gigabyte X299 AORUS Gaming 7','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',283.91,399.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (67,'Kingston HyperX Beast','Speed:DDR3-1866,Type:240-pin DIMM,CAS:10Module:8x8GBSize:64GB',708.91,863.05,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (68,'Crucial','Speed:DDR4-2133,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',590.13,766.11,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (69,'Intel Core i7-7820X','Speed:3.6GHz,Cores:8,TDP:140W',511.1,678.75,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (70,'Intel Xeon E5-2687W','Speed:3.1GHz,Cores:8,TDP:150W',581.16,710.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (71,'Intel Core i7-3930K','Speed:3.2GHz,Cores:6,TDP:130W',509.32,660,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (72,'Intel Xeon E5-2630 V3 (OEM/Tray)','Speed:2.4GHz,Cores:8,TDP:85W',421.9,589.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (73,'Intel Core i7-4770K','Speed:3.5GHz,Cores:4,TDP:84W',714.15,799,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (74,'Intel Xeon E5-2680 V2','Speed:2.8GHz,Cores:10,TDP:115W',567.81,701.95,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (75,'Intel Core i7-4930K','Speed:3.4GHz,Cores:6,TDP:130W',527.69,624.04,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (76,'Intel Xeon E5-2630 V3','Speed:2.4GHz,Cores:8,TDP:85W',499.96,629.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (77,'G.Skill Ripjaws V Series','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:4x16GBSize:64GB',577.25,695.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (78,'G.Skill Ripjaws V Series','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',517.78,686.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (79,'Corsair Dominator Platinum','Speed:DDR4-2666,Type:288-pin DIMM,CAS:15Module:8x8GBSize:64GB',537.63,659.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (80,'Intel Xeon E5-1650 V3','Speed:3.5GHz,Cores:6,TDP:140W',399.77,564.89,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (81,'Intel Xeon E5-2650 V4','Speed:2.2GHz,Cores:12,TDP:105W',945.11,1099.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (82,'Intel Core i7-6950X','Speed:3.0GHz,Cores:10,TDP:140W',1052.92,1499.89,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (83,'Asus STRIX-GTX1080TI-O11G-GAMING','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',691.13,829.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (84,'Asus X99-DELUXE/U3.1','CPU:LGA2011-3,Form Factor:ATX,RAM Slots:8,Max RAM:64GB',332.38,440.3,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (85,'Intel Xeon E5-2660 V3 (OEM/Tray)','Speed:2.6GHz,Cores:10,TDP:105W',902.18,1274.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (86,'MSI GTX 1080 TI SEA HAWK X','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',691.32,804.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (87,'PNY VCGGTX1080T11XGPB-OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.53GHz',600.92,759.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (88,'Gigabyte GV-N98TWF3OC-6GD','Chipset:GeForce GTX 980 Ti,Memory:6GBCore Clock:1.06GHz',633.29,749.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (89,'PNY VCGGTX780T3XPB-OC','Chipset:GeForce GTX 780 Ti,Memory:3GBCore Clock:980MHz',592.12,749.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (90,'EVGA 11G-P4-6696-KR','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.56GHz',594.46,759.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (91,'Intel Xeon E5-2695 V2','Speed:2.4GHz,Cores:12,TDP:115W',1793.53,2259.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (92,'Intel Xeon E5-2643 V2 (OEM/Tray)','Speed:3.5GHz,Cores:6,TDP:130W',1940.18,2200,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (93,'Intel Xeon E5-2690 (OEM/Tray)','Speed:2.9GHz,Cores:8,TDP:135W',1888.33,2116.72,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (94,'Western Digital WD2500AVVS','Series:AV-GP,Type:5400RPM,Capacity:250GB,Cache:8MB',12.63,15.55,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (95,'Western Digital WDS256G1X0C','Series:Black PCIe,Type:SSD,Capacity:256GB,Cache:N/A',85.87,109.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (96,'SanDisk SDSSDHII-480G-G25','Series:Ultra II,Type:SSD,Capacity:480GB,Cache:N/A',102.62,141.56,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (97,'Kingston SV300S37A/120G','Series:SSDNow V300 Series,Type:SSD,Capacity:120GB,Cache:N/A',45.93,59.87,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (98,'Intel Xeon E5-2687W V3','Speed:3.1GHz,Cores:10,TDP:160W',1781.47,2064.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (99,'Seagate ST1000DX002','Series:FireCuda,Type:Hybrid,Capacity:1TB,Cache:64MB',55.41,68.06,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (100,'Crucial CT275MX300SSD1','Series:MX300,Type:SSD,Capacity:275GB,Cache:N/A',79.21,97.88,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (101,'Kingston HyperX Predator','Speed:DDR4-3000,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',471.78,635.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (102,'Intel Xeon E5-2687W V4','Speed:3.0GHz,Cores:12,TDP:160W',1723.83,2042.69,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (103,'EVGA 11G-P4-6598-KR','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.56GHz',663.54,809.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (104,'SanDisk SDSSDA-240G-G26','Series:SSD PLUS,Type:SSD,Capacity:240GB,Cache:N/A',61.1,83.88,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (105,'EVGA 12G-P4-3992-KR','Chipset:GeForce GTX Titan Z,Memory:12GBCore Clock:732MHz',2313.07,2799.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (106,'Intel Xeon E5-2640 V2','Speed:2.0GHz,Cores:8,TDP:95W',545.19,608.95,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (107,'Kingston','Speed:DDR3-1600,Type:240-pin DIMM,CAS:11Module:4x16GBSize:64GB',474.18,644,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (108,'MSI GAMING','Chipset:GeForce GTX 780 Ti,Memory:3GBCore Clock:1.02GHz',753.18,849.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (109,'G.Skill Trident Z','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:4x16GBSize:64GB',585.26,713.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (110,'ATI FirePro W9000','Chipset:FirePro W9000,Memory:6GBCore Clock:975MHz',2785.55,3192.97,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (111,'Intel Core i7-6900K (OEM/Tray)','Speed:3.2GHz,Cores:8,TDP:140W',620.28,827.37,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (112,'Corsair Vengeance Pro','Speed:DDR3-2133,Type:240-pin DIMM,CAS:11Module:8x8GBSize:64GB',596.25,808.92,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (113,'G.Skill Trident Z','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',580.21,704.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (114,'Zotac ZT-70203-10P','Chipset:GeForce GTX 780,Memory:3GBCore Clock:1.01GHz',580.42,820.61,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (115,'Corsair Vengeance LPX','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:8x8GBSize:64GB',565.73,699.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (116,'G.Skill Trident Z','Speed:DDR4-3400,Type:288-pin DIMM,CAS:16Module:4x16GBSize:64GB',565.39,731.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (117,'G.Skill Ripjaws V Series','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:4x16GBSize:64GB',617.62,695.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (118,'Corsair Dominator Platinum','Speed:DDR4-2800,Type:288-pin DIMM,CAS:15Module:8x8GBSize:64GB',578.46,699.89,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (119,'Intel Xeon E5-2640 V3','Speed:2.6GHz,Cores:8,TDP:90W',668.24,899.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (120,'Intel Core 2 Extreme QX9775','Speed:3.2GHz,Cores:4,TDP:150W',737.68,892,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (121,'G.Skill Ripjaws V Series','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:8x8GBSize:64GB',603.22,721.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (122,'G.Skill Trident Z','Speed:DDR4-3333,Type:288-pin DIMM,CAS:16Module:4x16GBSize:64GB',532.27,722.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (123,'ATI FirePro S9150','Chipset:FirePro S9150,Memory:16GBCore Clock:900MHz',2628.06,3177.44,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (124,'Intel Xeon E5-1650 V4 (OEM/Tray)','Speed:3.6GHz,Cores:6,TDP:140W',453.14,594.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (125,'G.Skill Trident Z','Speed:DDR4-3600,Type:288-pin DIMM,CAS:17Module:4x16GBSize:64GB',594.04,768.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (126,'G.Skill Ripjaws V Series','Speed:DDR4-3200,Type:288-pin DIMM,CAS:16Module:8x8GBSize:64GB',510.93,640.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (127,'Corsair Dominator Platinum','Speed:DDR4-3333,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',538.55,719.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (128,'Kingston','Speed:DDR4-2133,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',650.48,741.63,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (129,'Corsair Vengeance LPX','Speed:DDR4-3333,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',609.53,734.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (130,'Western Digital WD2003FZEX','Series:BLACK SERIES,Type:7200RPM,Capacity:2TB,Cache:64MB',91.76,117.45,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (131,'Samsung MZ-V6P512BW','Series:960 PRO,Type:SSD,Capacity:512GB,Cache:512MB',223.99,279.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (132,'Intel Core i7-5930K','Speed:3.5GHz,Cores:6,TDP:140W',481.56,554.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (133,'PNY VCQP6000-PB','Chipset:Quadro P6000,Memory:24GBCore Clock:1.42GHz',4058.99,5499.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (134,'Asus Sabertooth 990FX','CPU:AM3+,Form Factor:ATX,RAM Slots:4,Max RAM:32GB',252.31,295.72,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (135,'Samsung MZ-V6E250','Series:960 EVO,Type:SSD,Capacity:250GB,Cache:512MB',92.98,127.88,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (136,'AMD Opteron 6378','Speed:2.4GHz,Cores:16,TDP:115W',651.92,826.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (137,'Asus Z10PE-D16 WS','CPU:LGA2011-3 x 2,Form Factor:SSI EEB,RAM Slots:16,Max RAM:1TB',332.52,469.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (138,'G.Skill Ripjaws V Series','Speed:DDR4-3000,Type:288-pin DIMM,CAS:14Module:4x16GBSize:64GB',499.09,645.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (139,'Hitachi HUS724030ALE641','Series:Ultrastar 7K4000,Type:7200RPM,Capacity:3TB,Cache:64MB',54.03,65.92,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (140,'MSI X99A WORKSTATION','CPU:LGA2011-3,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',239.95,289.97,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (141,'Supermicro X11SSL-CF','CPU:LGA1151,Form Factor:Micro ATX,RAM Slots:4,Max RAM:64GB',317.81,419.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (142,'AMD FirePro W9100','Chipset:FirePro W9100,Memory:16GBCore Clock:930MHz',2483.38,2998.89,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (143,'Asus Z10PE-D16','CPU:LGA2011-3 Narrow x 2,Form Factor:SSI EEB,RAM Slots:16,Max RAM:1TB',293.3,402.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (144,'Intel DG43RK','CPU:LGA775,Form Factor:Micro ATX,RAM Slots:4,Max RAM:8GB',219.69,289.79,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (145,'Asus VANGUARD B85','CPU:LGA1150,Form Factor:Micro ATX,RAM Slots:4,Max RAM:32GB',258.1,287,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (146,'EVGA Z270 Classified K','CPU:LGA1151,Form Factor:EATX,RAM Slots:4,Max RAM:64GB',234.26,283.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (147,'EVGA Classified','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:128GB',240.62,283.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (148,'MSI Z270 XPOWER GAMING TITANIUM','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',212.69,282.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (149,'ASRock X299 Taichi','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',214.36,282.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (150,'MSI X299 TOMAHAWK ARCTIC','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',223.92,281.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (151,'Supermicro X10SAT-O','CPU:LGA1150,Form Factor:ATX,RAM Slots:4,Max RAM:32GB',207.08,281.97,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (152,'Gigabyte X299 AORUS Gaming 3','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',227.48,280.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (153,'Intel Xeon E5-2650 V2','Speed:2.6GHz,Cores:8,TDP:95W',961.11,1249,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (154,'Intel Xeon E5-2650 V3','Speed:2.3GHz,Cores:10,TDP:105W',906.63,1204.98,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (155,'Intel Xeon E5-2630 V2','Speed:2.6GHz,Cores:6,TDP:80W',493.48,588.95,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (156,'Supermicro MBD-X10DRI-O','CPU:LGA2011-3 Narrow x 2,Form Factor:EATX,RAM Slots:16,Max RAM:1TB',291.34,394.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (157,'Asus MAXIMUS IX FORMULA','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',339.12,388.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (158,'Intel Xeon E5-2667 V3 (OEM/Tray)','Speed:3.2GHz,Cores:8,TDP:135W',1504.08,2009.46,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (159,'Intel Xeon E5-2690 V4','Speed:2.6GHz,Cores:14,TDP:135W',1499.26,1994.49,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (160,'Intel Xeon E5-2690 V3','Speed:2.6GHz,Cores:12,TDP:135W',1540.35,1908.73,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (161,'AMD 100-5056062','Chipset:Vega Frontier Edition Liquid,Memory:16GBCore Clock:1.5GHz',1343.84,1499.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (162,'Intel Xeon E5-2470V2','Speed:2.4GHz,Cores:10,TDP:95W',1671.95,1904.7,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (163,'Intel Xeon E5-2683 V4','Speed:2.1GHz,Cores:16,TDP:120W',1706.95,1899.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (164,'Intel Xeon E5-2637 V2 (OEM/Tray)','Speed:3.5GHz,Cores:4,TDP:130W',1323.12,1850,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (165,'Intel Xeon E5-2680','Speed:2.7GHz,Cores:8,TDP:130W',1479.95,1666.61,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (166,'Intel Xeon E5-2680 V3 (OEM/Tray)','Speed:2.5GHz,Cores:12,TDP:120W',1166.89,1638.89,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (167,'Intel Xeon E5-2650L V3 (OEM/Tray)','Speed:1.8GHz,Cores:12,TDP:65W',779.17,1010.46,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (168,'Seagate ST31000340NS - FFP','Series:Barracuda ES,Type:7200RPM,Capacity:1TB,Cache:32MB',34.4,43.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (169,'Intel Xeon E5-2683 V4 (OEM/Tray)','Speed:2.1GHz,Cores:16,TDP:120W',1369.83,1844.89,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (170,'Asus X99-DELUXE II','CPU:LGA2011-3,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',289.33,383.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (171,'ASRock Fatal1ty X299 Professional Gaming i9','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',287.5,382.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (172,'ASRock EP2C612 WS','CPU:LGA2011-3 x 2,Form Factor:SSI EEB,RAM Slots:8,Max RAM:',308.84,358.49,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (173,'ASRock Z270 SuperCarrier','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',264.35,353.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (174,'MSI GTX 1080 TI AERO 11G OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.51GHz',715.72,798.26,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (175,'NVIDIA VCQM4000-PB','Chipset:Quadro M4000,Memory:8GBCore Clock:N/A',682.09,790,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (176,'Intel Xeon E5-2650 V3 (OEM/Tray)','Speed:2.3GHz,Cores:10,TDP:105W',799.98,939.49,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (177,'PNY VCQM5000-PB','Chipset:Quadro M5000,Memory:8GBCore Clock:861MHz',1268.42,1759.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (178,'HP C2J95AT','Chipset:Quadro K5000,Memory:4GBCore Clock:706MHz',1715.91,1999.89,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (179,'Asus SABERTOOTH X99','CPU:LGA2011-3,Form Factor:ATX,RAM Slots:8,Max RAM:64GB',252.57,312.67,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (180,'Supermicro MBD-X10DAL-I-O','CPU:LGA2011-3 x 2,Form Factor:ATX,RAM Slots:8,Max RAM:512GB',239.28,279.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (181,'ATI FirePro R5000','Chipset:FirePro R5000,Memory:2GBCore Clock:825MHz',760.59,999.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (182,'PNY VCQK4200-PB','Chipset:Quadro K4200,Memory:4GBCore Clock:771MHz',799.05,949.89,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (183,'Asus GTX780TI-3GD5','Chipset:GeForce GTX 780 Ti,Memory:3GBCore Clock:876MHz',781.91,899.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (184,'AMD 100-506061','Chipset:Vega Frontier Edition,Memory:16GBCore Clock:1.44GHz',706.99,999.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (185,'MSI GTX 1080 TI LIGHTNING Z','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.61GHz',688.35,873.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (186,'PNY VCQK5200-PB','Chipset:Quadro K5200,Memory:8GBCore Clock:667MHz',1129.39,1449.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (187,'Asus MAXIMUS VIII EXTREME/ASSEMBLY','CPU:LGA1151,Form Factor:EATX,RAM Slots:4,Max RAM:64GB',253.41,353.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (188,'Asus X99-E WS/USB 3.1','CPU:LGA2011-3,Form Factor:SSI CEB,RAM Slots:8,Max RAM:128GB',428.89,482.49,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (189,'Asus X99-E-10G WS','CPU:LGA2011-3,Form Factor:SSI CEB,RAM Slots:8,Max RAM:128GB',582.02,649,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (190,'Supermicro X10SDV-8C-TLN4F','CPU:Xeon D-1541,Form Factor:Mini ITX,RAM Slots:4,Max RAM:64GB',664.29,948.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (191,'Asus ROG MAXIMUS IX EXTREME','CPU:LGA1151,Form Factor:EATX,RAM Slots:4,Max RAM:64GB',480.89,573.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (192,'Asus Rampage V Edition 10','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:128GB',452.5,519.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (193,'Asus Z10PE-D8 WS','CPU:LGA2011-3 x 2,Form Factor:SSI EEB,RAM Slots:8,Max RAM:512GB',504.14,561.59,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (194,'MSI X299 GAMING M7 ACK','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',278.71,397.42,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (195,'G.Skill Ripjaws 4 Series','Speed:DDR4-2400,Type:288-pin DIMM,CAS:14Module:8x16GBSize:128GB',836.03,1055.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (196,'Corsair Vengeance LPX','Speed:DDR4-2133,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',821.91,1099.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (197,'G.Skill Trident Z RGB','Speed:DDR4-3600,Type:288-pin DIMM,CAS:17Module:4x16GBSize:64GB',622.47,799.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (198,'Intel Core i7-980','Speed:3.33GHz,Cores:6,TDP:130W',563.7,699.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (199,'Intel Xeon E5-2630 V4','Speed:2.2GHz,Cores:10,TDP:85W',528.95,647.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (200,'Intel Core i7-4790K','Speed:4.0GHz,Cores:4,TDP:88W',461.92,620.95,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (201,'Kingston','Speed:DDR3-1600,Type:240-pin DIMM,CAS:11Module:4x8GBSize:32GB',566.98,653.5,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (202,'G.Skill Trident Z','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:4x16GBSize:64GB',533.21,713.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (203,'Kingston','Speed:DDR3-1333,Type:240-pin DIMM,CAS:9Module:4x16GBSize:64GB',556.84,671.38,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (204,'G.Skill Ripjaws V Series','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',546.64,686.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (205,'G.Skill Trident X','Speed:DDR3-3100,Type:240-pin DIMM,CAS:12Module:2x4GBSize:8GB',507.32,649.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (206,'PNY VCQM6000-24GB-PB','Chipset:Quadro M6000,Memory:24GBCore Clock:988MHz',3619.14,4139,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (207,'PNY VCQM6000-PB','Chipset:Quadro M6000,Memory:12GBCore Clock:988MHz',2505.04,3254.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (208,'Samsung MZ-V6P2T0BW','Series:960 Pro,Type:SSD,Capacity:2TB,Cache:2GB',840.11,1199.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (209,'Intel Core i7-990X Extreme Edition','Speed:3.47GHz,Cores:6,TDP:130W',1072.79,1199.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (210,'Intel Core i9-7900X','Speed:3.3GHz,Cores:10,TDP:140W',855.82,1029.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (211,'Intel Xeon E5-2650','Speed:2.0GHz,Cores:8,TDP:95W',869.03,1064.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (212,'Intel Xeon E5-2680 V4','Speed:2.4GHz,Cores:14,TDP:120W',1365.13,1639.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (213,'Intel Xeon E5-2643 V3 (OEM/Tray)','Speed:3.4GHz,Cores:6,TDP:135W',1266.37,1469.96,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (214,'Intel Core i7-5960X','Speed:3.0GHz,Cores:8,TDP:140W',865.59,1009.79,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (215,'PNY VCQP4000-PB','Chipset:Quadro P4000,Memory:8GBCore Clock:1.23GHz',724,829.89,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (216,'MSI GTX 1080 TI LIGHTNING X','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',742.94,863.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (217,'ASRock C2750D4I','CPU:Atom C2750,Form Factor:Mini ITX,RAM Slots:4,Max RAM:64GB',339.55,401.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (218,'Intel Xeon E5-2660 V4','Speed:2.0GHz,Cores:14,TDP:105W',1194.03,1388.89,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (219,'Intel Xeon E5-2660 V3','Speed:2.6GHz,Cores:10,TDP:105W',1041.99,1299.73,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (220,'MSI GeForce GTX 1080 Ti GAMING X 11G','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',666.59,759.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (221,'Zotac ZT-P10810C-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.65GHz',535.03,759.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (222,'Zotac ZT-P10810G-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.51GHz',598.25,754.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (223,'MSI GeForce GTX 1080 TI ARMOR 11G OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.48GHz',644.19,764.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (224,'Asus STRIX X299-E GAMING','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',306,349.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (225,'Gigabyte GA-Z270X-Gaming 9','CPU:LGA1151,Form Factor:EATX,RAM Slots:4,Max RAM:64GB',380.05,503.98,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (226,'Asus PRIME X299-A','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',274.56,309.85,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (227,'Gigabyte GA-X99-UD5 WIFI','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:64GB',217.83,305,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (228,'Intel Xeon E5-2699 V3 (OEM/Tray)','Speed:2.3GHz,Cores:18,TDP:145W',2867.51,3410.46,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (229,'Seagate ST10000DM0004','Series:BarraCuda Pro,Type:7200RPM,Capacity:10TB,Cache:256MB',284.23,399.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (230,'ADATA ASU800SS-512GT-C','Series:Ultimate SU800,Type:SSD,Capacity:512GB,Cache:N/A',113.29,136.69,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (231,'Samsung MZ-V6E1T0','Series:960 EVO,Type:SSD,Capacity:1TB,Cache:1000MB',358.06,449.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (232,'Western Digital WD1003FZEX','Series:BLACK SERIES,Type:7200RPM,Capacity:1TB,Cache:64MB',61.76,70.89,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (233,'SanDisk SDSSDA-120G-G26','Series:SSD PLUS,Type:SSD,Capacity:120GB,Cache:N/A',52.7,59.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (234,'Crucial CT525MX300SSD1','Series:MX300,Type:SSD,Capacity:525GB,Cache:N/A',135.59,150.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (235,'Hitachi A7K1000-1000','Series:Ultrastar,Type:7200RPM,Capacity:1TB,Cache:32MB',29.94,41.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (236,'MSI GTX 980 Ti Gaming 6G','Chipset:GeForce GTX 980 Ti,Memory:6GBCore Clock:1.18GHz',539.98,745.32,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (237,'Gigabyte GV-N108TAORUS-11GD','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.59GHz',605.3,744.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (238,'EVGA 06G-P4-4998-KR','Chipset:GeForce GTX 980 Ti,Memory:6GBCore Clock:1.19GHz',521.03,741.78,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (239,'MSI GTX 1080 Ti DUKE 11G OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.53GHz',555.07,739.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (240,'Intel Core i7-4960X Extreme Edition','Speed:3.6GHz,Cores:6,TDP:130W',1496.43,1805.97,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (241,'Intel Xeon E5-2699 V4 (OEM/Tray)','Speed:2.2GHz,Cores:22,TDP:145W',1535.62,1756,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (242,'Intel Xeon E5-1680 V3 (OEM/Tray)','Speed:3.2GHz,Cores:8,TDP:140W',1519.85,1751.99,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (243,'Intel Xeon E5-2643 V4 (OEM/Tray)','Speed:3.4GHz,Cores:6,TDP:135W',1225.59,1708.86,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (244,'Crucial','Speed:DDR4-2133,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',1139.23,1620.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (245,'ATI FirePro S9050','Chipset:FirePro S9050,Memory:12GBCore Clock:900MHz',1237.04,1699,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (246,'Gigabyte X299 AORUS Ultra Gaming','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',287.78,343.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (247,'Asus TUF X299 MARK 1','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',241.15,339.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (248,'Intel Xeon E5-2697 V3','Speed:2.6GHz,Cores:14,TDP:145W',2326.27,2774.98,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (249,'Intel Xeon E5-2698 V3 (OEM/Tray)','Speed:2.3GHz,Cores:16,TDP:135W',2035.18,2660.72,1);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (250,'Asus Z170-WS','CPU:LGA1151,Form Factor:ATX,RAM Slots:4,Max RAM:64GB',279.4,338.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (251,'MSI X299 GAMING PRO CARBON AC','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',238.8,337.81,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (252,'Gigabyte X299 AORUS Gaming 9','CPU:LGA2066,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',395.24,499.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (253,'Samsung MZ-V6P1T0BW','Series:960 Pro,Type:SSD,Capacity:1TB,Cache:1GB',466.49,579.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (254,'Samsung MZ-7KE256BW','Series:850 Pro Series,Type:SSD,Capacity:256GB,Cache:N/A',97.19,119.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (255,'Seagate ST2000DX002','Series:FireCuda,Type:Hybrid,Capacity:2TB,Cache:64MB',64.48,90.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (256,'Western Digital WD5000AACS','Series:Caviar Green,Type:5400RPM,Capacity:500GB,Cache:16MB',20.14,26.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (257,'SanDisk SDSSDHII-240G-G25','Series:Ultra II,Type:SSD,Capacity:240GB,Cache:N/A',73.39,84.95,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (258,'PNY SSD7CS1311-120-RB','Series:CS1311,Type:SSD,Capacity:120GB,Cache:N/A',50.59,57.98,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (259,'PNY SSD9SC240GMDA-RB','Series:XLR8,Type:SSD,Capacity:240GB,Cache:N/A',58.4,80.72,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (260,'Crucial CT1050MX300SSD1','Series:MX300,Type:SSD,Capacity:1.1TB,Cache:N/A',192.52,267.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (261,'G.Skill TridentZ RGB','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:8x16GBSize:128GB',1330.26,1504.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (262,'Corsair Dominator Platinum','Speed:DDR4-3200,Type:288-pin DIMM,CAS:16Module:8x16GBSize:128GB',1051.97,1449.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (263,'Western Digital WDS250G1B0B','Series:Blue,Type:SSD,Capacity:250GB,Cache:N/A',70.71,89.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (264,'Samsung MZ-75E120B/AM','Series:850 EVO-Series,Type:SSD,Capacity:120GB,Cache:N/A',74.41,88.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (265,'G.Skill Trident Z','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:8x16GBSize:128GB',1163.49,1431.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (266,'G.Skill Trident Z RGB','Speed:DDR4-3333,Type:288-pin DIMM,CAS:16Module:8x16GBSize:128GB',1174.36,1418.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (267,'EVGA 12G-P4-1999-KR','Chipset:GeForce GTX Titan X,Memory:12GBCore Clock:1.15GHz',1328.03,1799.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (268,'Western Digital WD10EZEX','Series:Caviar Blue,Type:7200RPM,Capacity:1TB,Cache:64MB',35.83,47.88,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (269,'Zotac ZT-P10810D-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',580.1,759.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (270,'Gigabyte GV-N1070WF2OC-8GD','Chipset:GeForce GTX 1070,Memory:8GBCore Clock:1.56GHz',551.62,769.99,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (271,'MSI X99A GODLIKE GAMING CARBON','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:128GB',415,549.59,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (272,'G.Skill Ripjaws 4 Series','Speed:DDR4-2800,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',834.06,1073.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (273,'Western Digital WD101KRYZ','Series:Gold,Type:7200RPM,Capacity:10TB,Cache:256MB',313.96,443.64,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (274,'ASRock E3C224D4M-16RE','CPU:LGA1150,Form Factor:ATX,RAM Slots:4,Max RAM:32GB',364.79,499.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (275,'MSI X99A GODLIKE GAMING','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:128GB',302.95,399.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (276,'Corsair Vengeance LPX','Speed:DDR4-2666,Type:288-pin DIMM,CAS:15Module:8x16GBSize:128GB',867.52,1163.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (277,'G.Skill Trident Z','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:8x8GBSize:64GB',556.8,758.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (278,'G.Skill Ripjaws V Series','Speed:DDR4-3000,Type:288-pin DIMM,CAS:14Module:8x8GBSize:64GB',546.05,677.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (279,'G.Skill Ripjaws V Series','Speed:DDR4-3000,Type:288-pin DIMM,CAS:14Module:8x16GBSize:128GB',1139.87,1318.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (280,'Western Digital WDS500G1B0B','Series:Blue,Type:SSD,Capacity:500GB,Cache:N/A',106.89,149.88,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (281,'Asus ROG-POSEIDON-GTX1080TI-P11G-GAMING','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.62GHz',696.14,864.98,2);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (282,'Corsair Dominator Platinum','Speed:DDR4-3200,Type:288-pin DIMM,CAS:15Module:8x8GBSize:64GB',700.5,804.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (283,'G.Skill Trident Z','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:8x8GBSize:64GB',647.83,760.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (284,'Kingston SA400S37/120G','Series:A400,Type:SSD,Capacity:120GB,Cache:N/A',40.63,54.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (285,'Samsung MZ-75E1T0B/AM','Series:850 EVO-Series,Type:SSD,Capacity:1TB,Cache:N/A',260.23,339.99,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (286,'Samsung MZ-V6E500','Series:960 EVO,Type:SSD,Capacity:500GB,Cache:512MB',209.62,234,5);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (287,'MSI X99A XPOWER GAMING TITANIUM','CPU:LGA2011-3,Form Factor:EATX,RAM Slots:8,Max RAM:128GB',257.23,329.99,4);
Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID) values (288,'Asus ROG STRIX X99 GAMING','CPU:LGA2011-3,Form Factor:ATX,RAM Slots:8,Max RAM:128GB',255.86,319.99,4);

Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (1,'Raytheon','514 W Superior St, Kokomo, IN',100,'http://www.raytheon.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (2,'Plains GP Holdings','2515 Bloyd Ave, Indianapolis, IN',100,'http://www.plainsallamerican.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (3,'US Foods Holding','8768 N State Rd 37, Bloomington, IN',100,'http://www.usfoods.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (4,'AbbVie','6445 Bay Harbor Ln, Indianapolis, IN',100,'http://www.abbvie.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (5,'Centene','4019 W 3Rd St, Bloomington, IN',100,'http://www.centene.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (6,'Community Health Systems','1608 Portage Ave, South Bend, IN',100,'http://www.chs.net');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (7,'Alcoa','23943 Us Highway 33, Elkhart, IN',100,'http://www.alcoa.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (8,'International Paper','136 E Market St # 800, Indianapolis, IN',100,'http://www.internationalpaper.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (9,'Emerson Electric','1905 College St, South Bend, IN',100,'http://www.emerson.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (10,'Union Pacific','3512 Rockville Rd # 137C, Indianapolis, IN',200,'http://www.up.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (11,'Amgen','1303 E University St, Bloomington, IN',200,'http://www.amgen.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (12,'U.S. Bancorp','115 N Weinbach Ave, Evansville, IN',200,'http://www.usbank.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (13,'Staples','2067 Rollett Ln, Evansville, IN',200,'http://www.staples.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (14,'Danaher','1105 E Allendale Dr, Bloomington, IN',200,'http://www.danaher.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (15,'Whirlpool','18305 Van Dyke St, Detroit, MI',200,'http://www.whirlpoolcorp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (16,'Aflac','Lucas Dr Bldg 348, Detroit, MI',200,'http://www.aflac.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (17,'AutoNation','1801 Monroe Ave Nw, Grand Rapids, MI',200,'http://www.autonation.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (18,'Progressive','4925 Kendrick St Se, Grand Rapids, MI',200,'http://www.progressive.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (19,'Abbott Laboratories','3310 Dixie Ct, Saginaw, MI',200,'http://www.abbott.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (20,'Dollar General','113 Washington Sq N, Lansing, MI',200,'http://www.dollargeneral.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (21,'Tenet Healthcare','2500 S Pennsylvania Ave, Lansing, MI',200,'http://www.tenethealth.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (22,'Eli Lilly','3213 S Cedar St, Lansing, MI',200,'http://www.lilly.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (23,'DTE Energy','8110 Jackson Rd, Ann Arbor, MI',200,'http://www.dteenergy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (24,'Southwest Airlines','6654 W Lafayette St, Detroit, MI',200,'http://www.southwest.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (25,'Penske Automotive Group','27 Benton Rd, Saginaw, MI',200,'http://www.penskeautomotive.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (26,'ManpowerGroup','8201 Livernois Ave, Detroit, MI',300,'http://www.manpowergroup.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (27,'Assurant','101 N Falahee Rd, Jackson, MI',300,'http://www.assurant.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (28,'Kohl?s','3100 E Eisenhower Pky # 100, Ann Arbor, MI',300,'http://www.kohlscorporation.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (29,'Starbucks','952 Vassar Dr, Kalamazoo, MI',400,'http://www.starbucks.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (30,'Paccar','150 W Jefferson Ave # 2500, Detroit, MI',400,'http://www.paccar.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (31,'Cummins','40 Pearl St Nw # 1020, Grand Rapids, MI',400,'http://www.cummins.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (32,'Global Partners','1135 Catherine St, Ann Arbor, MI',400,'http://www.globalp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (33,'Altria Group','301 E Genesee Ave, Saginaw, MI',400,'http://www.altria.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (34,'Xerox','9936 Dexter Ave, Detroit, MI',400,'http://www.xerox.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (35,'Kimberly-Clark','1660 University Ter, Ann Arbor, MI',400,'http://www.kimberly-clark.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (36,'Hartford Financial Services Group','15713 N East St, Lansing, MI',400,'http://www.thehartford.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (37,'Huntsman','555 John F Kennedy Rd, Dubuque, IA',500,'http://www.huntsman.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (38,'Kraft Heinz','10315 Hickman Rd, Des Moines, IA',500,'http://www.kraftheinzcompany.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (39,'Lear','2115 N Towne Ln Ne, Cedar Rapids, IA',500,'http://www.lear.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (40,'Fluor','1928 Sherwood Dr, Council Bluffs, IA',500,'http://www.fluor.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (41,'AECOM','2102 E Kimberly Rd, Davenport, IA',500,'http://www.aecom.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (42,'Becton Dickinson','1691 Asbury Rd, Dubuque, IA',500,'http://www.bd.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (43,'Facebook','5112 Sw 9Th St, Des Moines, IA',500,'http://www.facebook.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (44,'Jabil Circuit','221 3Rd Ave Se # 300, Cedar Rapids, IA',500,'http://www.jabil.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (45,'CenturyLink','2120 Heights Dr, Eau Claire, WI',500,'http://www.centurylink.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (46,'Supervalu','8989 N Port Washington Rd, Milwaukee, WI',500,'http://www.supervalu.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (47,'General Mills','6555 W Good Hope Rd, Milwaukee, WI',600,'http://www.generalmills.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (48,'Southern','1314 N Stoughton Rd, Madison, WI',600,'http://www.southerncompany.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (49,'NextEra Energy','4715 Sprecher Rd, Madison, WI',600,'http://www.nexteraenergy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (50,'Thermo Fisher Scientific','6161 N 64Th St, Milwaukee, WI',700,'http://www.thermofisher.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (51,'American Electric Power','11016 W Lincoln Ave, Milwaukee, WI',700,'http://www.aep.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (52,'PG&E Corp.','8600 W National Ave, Milwaukee, WI',700,'http://www.pge.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (53,'NGL Energy Partners','615 N Sherman Ave, Madison, WI',700,'http://www.nglenergypartners.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (54,'Bristol-Myers Squibb','512 E Grand Ave, Beloit, WI',700,'http://www.bms.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (55,'Goodyear Tire & Rubber','600 N Broadway Fl 1, Milwaukee, WI',700,'http://www.goodyear.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (56,'Nucor','5235 N Ironwood Ln, Milwaukee, WI',700,'http://www.nucor.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (57,'PNC Financial Services Group','322 E Michigan St, Milwaukee, WI',700,'http://www.pnc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (58,'Health Net','1400 Bellinger St Fl 4, Eau Claire, WI',700,'http://www.healthnet.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (59,'Micron Technology','411 E Wisconsin Ave # 2550, Milwaukee, WI',700,'http://www.micron.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (60,'Colgate-Palmolive','808 3Rd St # 100, Wausau, WI',700,'http://www.colgatepalmolive.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (61,'Freeport-McMoRan','300 Crooks St, Green Bay, WI',900,'http://www.fcx.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (62,'ConAgra Foods','122 E Dayton St, Madison, WI',900,'http://www.conagrafoods.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (63,'Sempra Energy','633 S Hawley Rd, Milwaukee, WI',900,'http://www.sempra.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (64,'Gap','2122 Campbell Rd, La Crosse, WI',1200,'http://www.gapinc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (65,'Baker Hughes','3324 N Oakland Ave, Milwaukee, WI',1200,'http://www.bakerhughes.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (66,'Bank of New York Mellon Corp.','666 22Nd Ave Ne, Minneapolis, MN',1200,'http://www.bnymellon.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (67,'Dollar Tree','1501 Lowry Ave N, Minneapolis, MN',1200,'http://www.dollartree.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (68,'AutoZone','113 N 1St St, Minneapolis, MN',1200,'http://www.autozone.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (69,'Whole Foods Market','4200 Yosemite Ave S, Minneapolis, MN',1200,'http://www.wholefoodsmarket.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (70,'PPG Industries','2800 Chicago Ave # 100, Minneapolis, MN',1200,'http://www.ppg.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (71,'Genuine Parts','200 1St St Sw, Rochester, MN',1200,'http://www.genpt.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (72,'Icahn Enterprises','314 W Superior St # 1015, Duluth, MN',1200,'http://www.ielp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (73,'Navistar International','1409 Willow St # 600, Minneapolis, MN',1200,'http://www.navistar.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (74,'Performance Food Group','2720 Brewerton Rd, Syracuse, NY',1200,'http://www.pfgc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (75,'Omnicom Group','2134 W Genesee St, Syracuse, NY',1200,'http://www.omnicomgroup.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (76,'DISH Network','1522 Main St, Niagara Falls, NY',1200,'http://www.dish.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (77,'FirstEnergy','49 N Pine Ave, Albany, NY',1200,'http://www.firstenergycorp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (78,'Precision Castparts','726 Union St, Hudson, NY',1200,'http://www.precast.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (79,'Monsanto','137 Lark St, Albany, NY',1200,'http://www.monsanto.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (80,'AES','33 Fulton St, Poughkeepsie, NY',1200,'http://www.aes.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (81,'CarMax','2360 Maxon Rd, Schenectady, NY',1200,'http://www.carmax.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (82,'Discover Financial Services','85 High St, Buffalo, NY',1200,'http://www.discoverfinancial.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (83,'National Oilwell Varco','1 Palisade Ave Fl 2, Yonkers, NY',1200,'http://www.nov.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (84,'NRG Energy','500 S Salina St # 500, Syracuse, NY',1200,'http://www.nrgenergy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (85,'Western Digital','33 Pine St, Lockport, NY',1200,'http://www.westerndigital.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (86,'Marriott International','Po Box 2152, Buffalo, NY',1200,'http://www.marriott.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (87,'Liberty Interactive','2979 Hamburg St, Schenectady, NY',1200,'http://www.libertyinteractive.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (88,'Walmart','1790 Grand Blvd, Schenectady, NY',1200,'http://www.walmart.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (89,'Exxon Mobil','7 Ingelside Ln, White Plains, NY',1200,'http://www.exxonmobil.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (90,'Apple','18 Glenridge Rd, Schenectady, NY',1200,'http://www.apple.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (91,'Berkshire Hathaway','6432 Rising Sun Ave, Philadelphia, PA',1200,'http://www.berkshirehathaway.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (92,'McKesson','Rr 10, Reading, PA',1200,'http://www.mckesson.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (93,'UnitedHealth Group','2455 Rose Garden Rd, Pittsburgh, PA',1200,'http://www.unitedhealthgroup.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (94,'CVS Health','1812 Timberline Rd, Altoona, PA',1200,'http://www.cvshealth.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (95,'General Motors','141 Schiller St, Reading, PA',1200,'http://www.gm.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (96,'Ford Motor','1126 Pawlings Rd, Norristown, PA',1200,'http://www.ford.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (97,'AT&T','55 Church Hill Rd, Reading, PA',1200,'http://www.att.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (98,'General Electric','354 N Prince St, Lancaster, PA',1200,'http://www.ge.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (99,'AmerisourceBergen','115 Chestnut St, Philadelphia, PA',1400,'http://www.amerisourcebergen.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (100,'Verizon','2899 Grand Ave, Pittsburgh, PA',1400,'http://www.verizon.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (101,'Chevron','Po Box 39, Indiana, PA',1400,'http://www.chevron.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (102,'Costco','1604 Broadway Ave, Pittsburgh, PA',1400,'http://www.costco.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (103,'Fannie Mae','4734 Liberty Ave, Pittsburgh, PA',1400,'http://www.fanniemae.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (104,'Kroger','21 Thornwood Rd, Harrisburg, PA',1400,'http://www.thekrogerco.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (105,'Amazon.com','3725 W Lake Rd, Erie, PA',1400,'http://www.amazon.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (106,'Walgreens Boots Alliance','1808 4Th Ave, Altoona, PA',1400,'http://www.walgreensbootsalliance.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (107,'HP','Station Sq, Pittsburgh, PA',1400,'http://www.hp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (108,'Cardinal Health','4020 Garden Ave, Erie, PA',1400,'http://www.cardinal.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (109,'Express Scripts Holding','100 N Peach St, Philadelphia, PA',1400,'http://www.express-scripts.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (110,'J.P. Morgan Chase','835 Heister Ln, Reading, PA',1400,'http://www.jpmorganchase.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (111,'W.W. Grainger','378 S Negley Ave, Pittsburgh, PA',1500,'http://www.grainger.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (112,'Boeing','5643 N 5Th St, Philadelphia, PA',1500,'http://www.boeing.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (113,'Microsoft','1401 W Warren Rd, Bradford, PA',1500,'http://www.microsoft.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (114,'Bank of America Corp.','815 Freeport Rd, Pittsburgh, PA',1500,'http://www.bankofamerica.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (115,'Wells Fargo','327 N Washington Ave # 300, Scranton, PA',1900,'http://www.wellsfargo.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (116,'Baxter International','810 Race St, Philadelphia, PA',1900,'http://www.baxter.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (117,'Home Depot','4901 Locust Ln, Harrisburg, PA',2300,'http://www.homedepot.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (118,'Citigroup','3376 Perrysville Ave, Pittsburgh, PA',2300,'http://www.citigroup.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (119,'Phillips 66','220 Penn Ave # 300, Scranton, PA',2300,'http://www.phillips66.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (120,'Stryker','135 S 18Th St # 1, Philadelphia, PA',2300,'http://www.stryker.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (121,'IBM','522 Swede St, Norristown, PA',2300,'http://www.ibm.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (122,'Valero Energy','7708 City Ave, Philadelphia, PA',2300,'http://www.valero.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (123,'Anthem','1801 Lititz Pike, Lancaster, PA',2300,'http://www.antheminc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (124,'Procter & Gamble','101 E Olney Ave, Philadelphia, PA',2300,'http://www.pg.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (125,'Air Products & Chemicals','612 Jefferson Ave, Scranton, PA',2300,'http://www.airproducts.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (126,'State Farm Insurance Cos.','223 4Th Ave # 1100, Pittsburgh, PA',2300,'http://www.statefarm.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (127,'Alphabet','36 W 34Th St, Erie, PA',2400,'http://www.google.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (128,'Comcast','1007 Mount Royal Blvd, Pittsburgh, PA',2400,'http://www.comcastcorporation.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (129,'Target','601 Market St, Philadelphia, PA',2400,'http://www.target.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (130,'Western Refining','5565 Baynton St, Philadelphia, PA',2400,'http://www.wnr.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (131,'Johnson & Johnson','5640 Fishers Ln, Rockville, MD',2400,'http://www.jnj.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (132,'MetLife','5122 Sinclair Ln, Baltimore, MD',2400,'http://www.metlife.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (133,'Archer Daniels Midland','680 Bel Air Rd, Bel Air, MD',2400,'http://www.adm.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (134,'Marathon Petroleum','4301 Ashland Ave, Baltimore, MD',2400,'http://www.marathonpetroleum.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (135,'Freddie Mac','8004 Stansbury Rd, Baltimore, MD',2400,'http://www.freddiemac.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (136,'PepsiCo','10209 Yearling Dr, Rockville, MD',2400,'http://www.pepsico.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (137,'United Technologies','3000 Greenmount Ave, Baltimore, MD',2400,'http://www.utc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (138,'Aetna','200 E Fort Ave, Baltimore, MD',2400,'http://www.aetna.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (139,'Lowe?s','1262 Vocke Rd, Cumberland, MD',2400,'http://www.lowes.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (140,'UPS','3314 Eastern Ave, Baltimore, MD',2400,'http://www.ups.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (141,'AIG','12817 Coastal Hwy, Ocean City, MD',2400,'http://www.aig.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (142,'Prudential Financial','11200 Scaggsville Rd, Laurel, MD',2400,'http://www.prudential.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (143,'Intel','9435 Washington Blvd N # M, Laurel, MD',2400,'http://www.intel.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (144,'Humana','2300 Harford Rd, Baltimore, MD',2400,'http://www.humana.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (145,'Disney','2 2Nd St # A, Ocean City, MD',2400,'http://www.disney.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (146,'Cisco Systems','6917 W Oklahoma Ave, Milwaukee, WI',2400,'http://www.cisco.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (147,'Pfizer','206 S Broadway # 707, Rochester, MN',2400,'http://www.pfizer.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (148,'Dow Chemical','160 Glenwood Ave, Minneapolis, MN',2400,'http://www.dow.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (149,'Sysco','6915 Grand Ave, Hammond, IN',2400,'http://www.sysco.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (150,'FedEx','2215 Oak Industrial Dr Ne, Grand Rapids, MI',2400,'http://www.fedex.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (151,'Caterpillar','65 Cadillac Sq # 2701, Detroit, MI',2500,'http://www.caterpillar.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (152,'Lockheed Martin','3435 Tuscany Dr Se, Grand Rapids, MI',2500,'http://www.lockheedmartin.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (153,'New York Life Insurance','215 4Th Ave Se, Cedar Rapids, IA',2500,'http://www.newyorklife.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (154,'Universal Health Services','1751 Madison Ave, Council Bluffs, IA',3500,'http://www.uhsinc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (155,'Coca-Cola','810 1St Ave, Council Bluffs, IA',3500,'http://www.coca-colacompany.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (156,'HCA Holdings','500 W Oklahoma Ave, Milwaukee, WI',3500,'http://www.hcahealthcare.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (157,'Ingram Micro','4811 S 76Th St # 205, Milwaukee, WI',3600,'http://www.ingrammicro.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (158,'Owens & Minor','310 Broadway St, Alexandria, MN',3600,'http://www.owens-minor.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (159,'Energy Transfer Equity','1721 E Lake St, Minneapolis, MN',3600,'http://www.energytransfer.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (160,'Tyson Foods','255 Great Arrow Ave, Buffalo, NY',3600,'http://www.tysonfoods.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (161,'American Airlines Group','800 Carter St, Rochester, NY',3600,'http://www.aa.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (162,'Delta Air Lines','6640 Campbell Blvd, Lockport, NY',3600,'http://www.delta.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (163,'Charter Communications','802 North Ave, Pittsburgh, PA',3600,'http://www.charter.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (164,'Nationwide','1136 Arch St, Philadelphia, PA',3600,'http://www.nationwide.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (165,'Johnson Controls','6Th And Master St, Philadelphia, PA',3600,'http://www.johnsoncontrols.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (166,'Best Buy','Rt 6 E, Warren, PA',3700,'http://www.bestbuy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (167,'Merck','1924 Bedford St, Cumberland, MD',3700,'http://www.merck.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (168,'Advance Auto Parts','2674 Collingwood St, Detroit, MI',3700,'http://www.advanceautoparts.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (169,'Liberty Mutual Insurance Group','2713 N Bendix Dr, South Bend, IN',3700,'http://www.libertymutual.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (170,'Goldman Sachs Group','23985 Bedford Rd N, Battle Creek, MI',3700,'http://www.gs.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (171,'Honeywell International','752 W Huron St, Pontiac, MI',3700,'http://www.honeywell.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (172,'MasterCard','660 Woodward Ave # 2290, Detroit, MI',3700,'http://www.mastercard.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (173,'Massachusetts Mutual Life Insurance','1330 N Memorial Dr, Racine, WI',5000,'http://www.massmutual.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (174,'Oracle','701 Seneca St, Buffalo, NY',5000,'http://www.oracle.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (175,'Morgan Stanley','8 Automation Ln, Albany, NY',5000,'http://www.morganstanley.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (176,'Cigna','811 N Brandywine Ave, Schenectady, NY',5000,'http://www.cigna.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (177,'United Continental Holdings','2904 S Salina St, Syracuse, NY',5000,'http://www.unitedcontinentalholdings.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (178,'Allstate','3025 Sussex Ave, Pittsburgh, PA',5000,'http://www.allstate.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (179,'TIAA','932 High St, Lancaster, PA',5000,'http://www.tiaa.org');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (180,'INTL FCStone','5344 Haverford Ave, Philadelphia, PA',5000,'http://www.intlfcstone.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (181,'CHS','6959 Tulip St, Philadelphia, PA',5000,'http://www.chsinc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (182,'American Express','511 S Central Ave # A, Baltimore, MD',5000,'http://www.americanexpress.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (183,'Gilead Sciences','400 E Joppa Rd, Baltimore, MD',5000,'http://www.gilead.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (184,'Publix Super Markets','1795 Wu Meng, Muang Chonburi, ',1200,'http://www.publix.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (185,'General Dynamics','1796 Tsing Tao, Muang Nonthaburi, ',1200,'http://www.generaldynamics.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (186,'TJX','1810 Tucker Crt, Mumbai, ',5000,'http://www.tjx.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (187,'ConocoPhillips','Walpurgisstr 69, Munich, ',2400,'http://www.conocophillips.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (188,'Nike','Sendlinger Tor 4, Munich, ',2400,'http://www.nike.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (189,'World Fuel Services','Theresienstr 15, Munich, ',2400,'http://www.wfscorp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (190,'3M','Via Frenzy 6903, Roma, ',1200,'http://www.3m.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (191,'Mondelez International','1822 Ironweed St, Toronto, ONT',1200,'http://www.mondelezinternational.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (192,'Exelon','Via Luminosa 162, Firenze, ',500,'http://www.exeloncorp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (193,'Twenty-First Century Fox','Via Notoriosa 1932 Rd, Firenze, ',500,'http://www.21cf.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (194,'Deere','Via Notoriosa 1941, Firenze, ',500,'http://www.johndeere.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (195,'Applied Materials','Via Dolorosa 69, Tellaro, ',700,'http://www.appliedmaterials.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (196,'DuPont','Via Notoriosa 1943, Firenze, ',2400,'http://www.dupont.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (197,'Avnet','Via Luminosa 162, Tellaro, ',700,'http://www.avnet.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (198,'Eastman Chemical','2017 Convoy St, Tokyo, ',2400,'http://www.eastman.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (199,'Macy?s','Via Di Firenze 231, Tellaro, ',700,'http://www.macysinc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (200,'Enterprise Products Partners','Via Notoriosa 1949, Firenze, ',2400,'http://www.enterpriseproducts.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (201,'Travelers Cos.','Via Frenzy 6903, Tellaro, ',3600,'http://www.travelers.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (202,'Sonic Automotive','Piazza Del Congresso 22, San Giminiano, ',3600,'http://www.sonicautomotive.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (203,'Philip Morris International','Piazza Quattre Stagioni 4, San Giminiano, ',3600,'http://www.pmi.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (204,'Rite Aid','Piazza Cacchiatore 23, San Giminiano, ',3600,'http://www.riteaid.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (205,'Tech Data','Via Notoriosa 1932, Tellaro, ',3600,'http://www.techdata.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (206,'Ally Financial','Via Notoriosa 1949, Ventimiglia, ',3600,'http://www.ally.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (207,'Northwestern Mutual','1831 No Wong, Peking, ',3600,'http://www.northwesternmutual.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (208,'Tesoro','Via Notoriosa 1942, Firenze, ',500,'http://www.tsocorp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (209,'Time Warner','Via Delle Grazie 11, Tellaro, ',2400,'http://www.timewarner.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (210,'CST Brands','2033 Spartacus St, Samutprakarn, ',3700,'http://www.cstbrands.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (211,'McDonald?s','2034 Sabrina Rd, Samutprakarn, ',3700,'http://www.aboutmcdonalds.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (212,'Qualcomm','Piazza Svizzera, Milano, ',500,'http://www.qualcomm.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (213,'Sears Holdings','Ruella Delle Spiriti, Milano, ',500,'http://www.searsholdings.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (214,'eBay','Via Del Disegno 194, Milano, ',1500,'http://www.ebay.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (215,'Capital One Financial','Via Delle Capeletti 52, San Giminiano, ',1500,'http://www.capitalone.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (216,'EMC','Via Delle Grazie 11, San Giminiano, ',700,'http://www.emc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (217,'USAA','Via Delli Capelli 2, San Giminiano, ',700,'http://www.usaa.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (218,'Lennar','1592 Silverado St, Bangalore, Kar',700,'http://www.lennar.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (219,'Duke Energy','1593 Silverado St, Bangalore, Kar',5000,'http://www.duke-energy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (220,'Time Warner Cable','1597 Legend St, Mysore, Kar',3700,'http://www.twc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (221,'Halliburton','1602 Sholay St, Chennai, Tam',1500,'http://www.halliburton.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (222,'GameStop','1605 Bazigar Crt, Pune, ',5000,'http://www.gamestopcorp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (223,'Northrop Grumman','1606 Sangam Blvd, New Delhi, ',5000,'http://www.northropgrumman.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (224,'Arrow Electronics','1607 Sangam Blvd, New Delhi, ',5000,'http://www.arrow.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (225,'Reliance Steel & Aluminum','1609 Pakija Rd, New Delhi, ',3700,'http://www.rsac.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (226,'Office Depot','1612 Talaivar St, Chennai, Tam',5000,'http://www.officedepot.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (227,'Nordstrom','1613 Victoria St, Calcutta, ',5000,'http://www.nordstrom.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (228,'Kinder Morgan','1614 Gitanjali Rd, Calcutta, ',5000,'http://www.kindermorgan.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (229,'Aramark','1615 Crackers Crt, Chennai - India, ',300,'http://www.aramark.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (230,'DaVita HealthCare Partners','1616 Mr. India Ln, Bombay - India, Kar',300,'http://www.davita.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (231,'Molina Healthcare','1617 Crackers St, Bangalore - India, Kar',300,'http://www.molinahealthcare.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (232,'WellCare Health Plans','1618 Villains St, New Delhi - India, ',1200,'http://www.wellcare.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (233,'CBS','1619 Bowlers Rd, Chandigarh, Har',1200,'http://www.cbscorporation.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (234,'Visa','1620 Sixers Crt, Bombay, Kar',5000,'http://www.visa.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (235,'Lincoln National','1622 Roja St, Chennai, Tam',5000,'http://www.lfg.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (236,'Ecolab','1623 Hey Ram St, Chennai - India, ',5000,'http://www.ecolab.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (237,'Kellogg','1627 Sowdagar St, New Delhi, ',1900,'http://www.kelloggcompany.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (238,'C.H. Robinson Worldwide','1628 Pataudi St, New Delhi, ',1900,'http://www.chrobinson.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (239,'Textron','1632 Splash St, Chandigarh, Har',2500,'http://www.textron.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (240,'Loews','1636 Pretty Blvd, Bangalore, Kar',5000,'http://www.loews.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (241,'Illinois Tool Works','1646 Brazil Blvd, Chennai, Tam',500,'http://www.itw.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (242,'Synnex','1647 Suspense St, Cochin, Ker',500,'http://www.synnex.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (243,'Hormel Foods','1648 Anamika St, Cochin, Ker',500,'http://www.hormelfoods.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (244,'Viacom','1650 Teesri Manjil Crt, Kashmir, ',3700,'http://www.viacom.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (245,'HollyFrontier','1656 Veterans Rd, Chennai, Tam',2500,'http://www.hollyfrontier.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (246,'Land O?Lakes','1662 Talaivar St, Chennai, Tam',1500,'http://www.landolakesinc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (247,'Celgene','1667 2010 St, Batavia, Ker',500,'http://www.celgene.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (248,'Devon Energy','Piazza Del Congresso 22, Roma, ',3700,'http://www.devonenergy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (249,'PBF Energy','Piazza Quattre Stagioni 4, Roma, ',3700,'http://www.pbfenergy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (250,'Genworth Financial','Piazza Svizzera, Roma, ',2400,'http://www.genworth.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (251,'Yum Brands','Ruella Delle Spiriti, Roma, ',500,'http://www.yum.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (252,'Texas Instruments','Via Del Disegno 194, Roma, ',500,'http://www.ti.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (253,'CDW','Via Delle Capeletti 52, Roma, ',500,'http://www.cdw.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (254,'PayPal Holdings','Via Dello Croce 93, Roma, ',1200,'http://www.paypal.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (255,'Waste Management','Via Di Firenze 231, Roma, ',2400,'http://www.wm.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (256,'Marsh & McLennan','Via Dolorosa 69, Roma, ',2400,'http://www.mmc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (257,'Chesapeake Energy','Via Notoriosa 1942, Ventimiglia, ',700,'http://www.chk.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (258,'Priceline Group','Via Notoriosa 1943, Ventimiglia, ',700,'http://www.pricelinegroup.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (259,'Parker-Hannifin','Canale Grande 2, Roma, ',700,'http://www.parker.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (260,'Occidental Petroleum','Piazza Cacchiatore 23, Roma, ',700,'http://www.oxy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (261,'Guardian Life Ins. Co. of America','Via Del Disegno 194, San Giminiano, ',600,'http://www.guardianlife.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (262,'MGM Resorts International','Piazza Svizzera, San Giminiano, ',100,'http://www.mgmresorts.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (263,'Farmers Insurance Exchange','Via Dello Croce 93, Tellaro, ',100,'http://www.farmers.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (264,'J.C. Penney','Via Dello Croce 93, San Giminiano, ',400,'http://www.jcpenney.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (265,'Consolidated Edison','Ruella Delle Spiriti, San Giminiano, ',400,'http://www.conedison.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (266,'Autoliv','Via Delle Capeletti 52, San Giminiano, ',400,'http://www.autoliv.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (267,'Cognizant Technology Solutions','Via Delli Capelli 2, Tellaro, ',400,'http://www.cognizant.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (268,'VF','1971 Limelight Blvd, Samutprakarn, ',1200,'http://www.vfc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (269,'Ameriprise Financial','Harmoniegasse 3, Baden-Daettwil, AG',500,'http://www.ameriprise.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (270,'Fidelity National Financial','Sonnenberg 4, Baden-Daettwil, AG',500,'http://www.fnf.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (271,'Computer Sciences','Alfred E. Neumann-Weg 3, Baden-Daettwil, AG',500,'http://www.csc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (272,'L Brands','Dr. Herbert Bitto Str 23, Baden-Daettwil, AG',2300,'http://www.lb.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (273,'Jacobs Engineering Group','Taefernstr 4, Baden-Daettwil, AG',2300,'http://www.jacobs.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (274,'Republic Services','Kreuzritterplatz 5, Baden-Daettwil, AG',3500,'http://www.republicservices.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (275,'Principal Financial','Helebardenweg 5, Baden-Daettwil, AG',3500,'http://www.principal.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (276,'Ross Stores','Zum Freundlichen Nachbarn 5, Baden-Daettwil, AG',3500,'http://www.rossstores.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (277,'Bed Bath & Beyond','Ziegenwiese 3, Baden-Daettwil, AG',3500,'http://www.bedbathandbeyond.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (278,'CSX','Am Waldrand 5, Baden-Daettwil, AG',3500,'http://www.csx.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (279,'Toys ?R? Us','Zur Kantine 9, Baden-Daettwil, AG',1200,'http://www.toysrusinc.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (280,'Las Vegas Sands','Grosse Bahnhostrasse 3, Baden-Daettwil, AG',1200,'http://www.sands.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (281,'Leucadia National','Paradeplatz 4, Zuerich, ZH',1200,'http://www.leucadia.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (282,'Dominion Resources','Badenerstr 1941, Zuerich, ZH',3500,'http://www.dom.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (283,'United States Steel','Welschdoerfchen 1941, Chur, ZH',3500,'http://www.ussteel.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (284,'L-3 Communications','Le Reduit, Tschiertschen, GR',1400,'http://www.l-3com.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (285,'Edison International','Bendlehn, Trogen, SG',1400,'http://www.edisoninvestor.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (286,'Entergy','Spisertor 3, St. Gallen, SG',1400,'http://www.entergy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (287,'ADP','Langstr 14, Zuerich, ZH',700,'http://www.adp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (288,'First Data','Roessligasse 4, Zurich, ZH',700,'http://www.firstdata.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (289,'BlackRock','Zum Froehlichen Schweizer 3, Zurich, ZH',5000,'http://www.blackrock.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (290,'WestRock','Chrottenweg, Bern, BE',5000,'http://www.westrock.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (291,'Voya Financial','Bruppacher Str 3, Baden-Daettwil, AG',5000,'http://www.voya.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (292,'Sherwin-Williams','Limmatquai, Zuerich, ZH',1800,'http://www.sherwin.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (293,'Hilton Worldwide Holdings','Dreikoenigsstr 3, Zurich, ZH',1800,'http://www.hiltonworldwide.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (294,'Corning','Pfannenstilstr 13, Egg, ZH',2300,'http://www.corning.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (295,'R.R. Donnelley & Sons','Kreuzstr 32, Zurich, ZH',2300,'http://www.rrdonnelley.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (296,'Stanley Black & Decker','1539 Stripes Rd, Baden-Daettwil, AG',2300,'http://www.stanleyblackanddecker.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (297,'Xcel Energy','1540 Stripes Crt, Baden-Daettwil, AG',400,'http://www.xcelenergy.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (298,'Peter Kiewit Sons?','1592 Silverado St, Bangalore, Kar',1400,'http://www.kiewit.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (299,'Murphy USA','1593 Silverado St, Bangalore, Kar',1400,'http://corporate.murphyusa.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (300,'CBRE Group','1596 Commando Blvd, Bangalore, Kar',1200,'http://www.cbre.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (301,'Univar','1598 Legend St, Bangalore, Kar',5000,'http://www.univar.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (302,'D.R. Horton','1599 Legend Rd, Bangalore, Kar',5000,'http://www.drhorton.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (303,'Estee Lauder','1600 Target Crt, Bangalore, Kar',5000,'http://www.elcompanies.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (304,'Praxair','1603 Rebel St, Bangalore, Kar',500,'http://www.praxair.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (305,'Biogen','1604 Volunteers Rd, Bangalore, Kar',500,'http://www.biogen.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (306,'Mosaic','1606 Volunteers Blvd, Bangalore, Kar',3500,'http://www.mosaicco.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (307,'State Street Corp.','1607 Abwdrts St, Bangalore, Kar',3500,'http://www.statestreet.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (308,'Unum Group','1608 Amadeus St, Bangalore, Kar',3500,'http://www.unum.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (309,'Reynolds American','1610 Betrayal Crt, Bangalore, Kar',5000,'http://www.reynoldsamerican.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (310,'Core-Mark Holding','1611 Carmen Blvd, Bangalore, Kar',5000,'http://www.core-mark.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (311,'Group 1 Automotive','1614 Crackers Rd, Bangalore - India, Kar',2300,'http://www.group1auto.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (312,'Henry Schein','1615 Crackers Crt, Bangalore - India, Kar',5000,'http://www.henryschein.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (313,'Hertz Global Holdings','1616 Crackers Blvd, Bangalore - India, Kar',5000,'http://www.hertz.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (314,'Thrivent Financial for Lutherans','1617 Crackers St, Bangalore - India, Kar',900,'http://www.thrivent.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (315,'Norfolk Southern','1618 Footloose St, Bangalore - India, Kar',900,'http://www.nscorp.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (316,'Reinsurance Group of America','1619 Footloose Rd, Bangalore - India, Kar',900,'http://www.rgare.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (317,'Public Service Enterprise Group','1621 Gargon! Blvd, Bangalore - India, Kar',600,'http://www.pseg.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (318,'Cameron International','1667 2010 St, Batavia, IL',200,'http://www.c-a-m.com');
Insert into CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CREDIT_LIMIT,WEBSITE) values (319,'BB&T Corp.','1668 Chong Tao, Beijing, ',200,'http://www.bbt.com');

Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (1,'Flor','Stone','flor.stone@raytheon.com','+1 317 123 4104',1);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (2,'Lavera','Emerson','lavera.emerson@plainsallamerican.com','+1 317 123 4111',2);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (3,'Fern','Head','fern.head@usfoods.com','+1 812 123 4115',3);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (4,'Shyla','Ortiz','shyla.ortiz@abbvie.com','+1 317 123 4126',4);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (5,'Jeni','Levy','jeni.levy@centene.com','+1 812 123 4129',5);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (6,'Matthias','Hannah','matthias.hannah@chs.net','+1 219 123 4136',6);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (7,'Matthias','Cruise','matthias.cruise@alcoa.com','+1 219 123 4138',7);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (8,'Meenakshi','Mason','meenakshi.mason@internationalpaper.com','+1 317 123 4141',8);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (9,'Christian','Cage','christian.cage@emerson.com','+1 219 123 4142',9);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (10,'Charlie','Sutherland','charlie.sutherland@up.com','+1 317 123 4146',10);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (11,'Charlie','Pacino','charlie.pacino@amgen.com','+1 812 123 4150',11);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (12,'Guillaume','Jackson','guillaume.jackson@usbank.com','+1 812 123 4151',12);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (13,'Daniel','Costner','daniel.costner@staples.com','+1 812 123 4153',13);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (14,'Dianne','Derek','dianne.derek@danaher.com','+1 812 123 4157',14);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (15,'Geraldine','Schneider','geraldine.schneider@whirlpoolcorp.com','+1 313 123 4159',15);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (16,'Geraldine','Martin','geraldine.martin@aflac.com','+1 313 123 4160',16);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (17,'Guillaume','Edwards','guillaume.edwards@autonation.com','+1 616 123 4162',17);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (18,'Maurice','Mahoney','maurice.mahoney@progressive.com','+1 616 123 4181',18);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (19,'Maurice','Hasan','maurice.hasan@abbott.com','+1 517 123 4191',19);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (20,'Diane','Higgins','diane.higgins@dollargeneral.com','+1 517 123 4199',20);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (21,'Dianne','Sen','dianne.sen@tenethealth.com','+1 517 123 4201',21);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (22,'Maurice','Daltrey','maurice.daltrey@lilly.com','+1 517 123 4206',22);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (23,'Tess','Roth','tess.roth@dteenergy.com','+1 313 123 4219',23);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (24,'Ka','Kaufman','ka.kaufman@southwest.com','+1 313 123 4222',24);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (25,'Sharyl','Montoya','sharyl.montoya@penskeautomotive.com','+1 517 123 4225',25);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (26,'Daniel','Glass','daniel.glass@manpowergroup.com','+1 313 123 4226',26);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (27,'Rena','Arnold','rena.arnold@assurant.com','+1 517 123 4228',27);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (28,'Arlyne','Ingram','arlyne.ingram@kohlscorporation.com','+1 313 123 4230',28);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (29,'Willie','Barrera','willie.barrera@starbucks.com','+1 616 123 4234',29);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (30,'Mireya','Cochran','mireya.cochran@paccar.com','+1 313 123 4242',30);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (31,'Marlene','Odom','marlene.odom@cummins.com','+1 616 123 4245',31);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (32,'Jaclyn','Atkinson','jaclyn.atkinson@globalp.com','+1 313 123 4248',32);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (33,'Al','Schultz','al.schultz@altria.com','+1 517 123 4253',33);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (34,'Felicitas','Riley','felicitas.riley@xerox.com','+1 313 123 4255',34);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (35,'Cora','Calhoun','cora.calhoun@kimberly-clark.com','+1 313 123 4263',35);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (36,'Trula','Buckley','trula.buckley@thehartford.com','+1 517 123 4265',36);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (37,'Sasha','Wallace','sasha.wallace@huntsman.com','+1 319 123 4271',37);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (38,'Caitlin','Hill','caitlin.hill@kraftheinzcompany.com','+1 515 123 4273',38);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (39,'Gino','Pickett','gino.pickett@lear.com','+1 319 123 4278',39);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (40,'Amira','Macdonald','amira.macdonald@fluor.com','+1 712 123 4280',40);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (41,'Mack','Morse','mack.morse@aecom.com','+1 319 123 4282',41);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (42,'Eboni','Jarvis','eboni.jarvis@bd.com','+1 319 123 4288',42);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (43,'Gabrielle','Dennis','gabrielle.dennis@facebook.com','+1 515 123 4290',43);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (44,'Classie','Norris','classie.norris@jabil.com','+1 319 123 4301',44);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (45,'Khalilah','Holman','khalilah.holman@centurylink.com','+1 745 123 4306',45);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (46,'Isreal','Rose','isreal.rose@supervalu.com','+1 414 123 4307',46);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (47,'Verena','Hopper','verena.hopper@generalmills.com','+1 414 123 4308',47);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (48,'Audie','Flores','audie.flores@southerncompany.com','+1 608 123 4309',48);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (49,'Gertrude','Cooke','gertrude.cooke@nexteraenergy.com','+1 608 123 4318',49);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (50,'Princess','Kane','princess.kane@thermofisher.com','+1 414 123 4323',50);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (51,'Jacinta','Faulkner','jacinta.faulkner@aep.com','+1 414 123 4324',51);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (52,'Lashon','Wall','lashon.wall@pge.com','+1 414 123 4328',52);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (53,'Corliss','Mcneil','corliss.mcneil@nglenergypartners.com','+1 608 123 4332',53);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (54,'Brock','Webb','brock.webb@bms.com','+1 608 123 4344',54);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (55,'Melany','Mcmahon','melany.mcmahon@goodyear.com','+1 414 123 4347',55);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (56,'Rogelio','Kirby','rogelio.kirby@nucor.com','+1 414 123 4348',56);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (57,'Wallace','Dillard','wallace.dillard@pnc.com','+1 414 123 4350',57);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (58,'Gia','Boyle','gia.boyle@healthnet.com','+1 745 123 4367',58);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (59,'Tennie','Gay','tennie.gay@micron.com','+1 414 123 4369',59);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (60,'Ophelia','Hurst','ophelia.hurst@colgatepalmolive.com','+1 715 123 4372',60);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (61,'Ciara','Flowers','ciara.flowers@fcx.com','+1 414 123 4373',61);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (62,'Birgit','Stephenson','birgit.stephenson@conagrafoods.com','+1 608 123 4374',62);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (63,'Shameka','Spencer','shameka.spencer@sempra.com','+1 414 123 4376',63);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (64,'Alysa','Kane','alysa.kane@gapinc.com','+1 608 123 4378',64);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (65,'Fransisca','Reeves','fransisca.reeves@bakerhughes.com','+1 414 123 4381',65);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (66,'Jessika','Merritt','jessika.merritt@bnymellon.com','+1 612 123 4397',66);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (67,'Agustina','Conner','agustina.conner@dollartree.com','+1 612 123 4399',67);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (68,'Roxanna','Wade','roxanna.wade@autozone.com','+1 612 123 4408',68);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (69,'Virgie','Mays','virgie.mays@wholefoodsmarket.com','+1 612 123 4417',69);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (70,'Trang','Mcconnell','trang.mcconnell@ppg.com','+1 612 123 4419',70);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (71,'Nada','West','nada.west@genpt.com','+1 507 123 4421',71);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (72,'Catherina','Haney','catherina.haney@ielp.com','+1 218 123 4429',72);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (73,'Harriette','Melton','harriette.melton@navistar.com','+1 612 123 4434',73);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (74,'Willette','Rodgers','willette.rodgers@pfgc.com','+1 315 123 4442',74);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (75,'Calandra','Williamson','calandra.williamson@omnicomgroup.com','+1 315 123 4447',75);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (76,'Tamatha','Delgado','tamatha.delgado@dish.com','+1 716 123 4457',76);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (77,'Felix','Ferguson','felix.ferguson@firstenergycorp.com','+1 518 123 4459',77);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (78,'Elwood','Hampton','elwood.hampton@precast.com','+1 518 123 4464',78);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (79,'Josh','Roach','josh.roach@monsanto.com','+1 518 123 4474',79);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (80,'Luanna','Scott','luanna.scott@aes.com','+1 914 123 4494',80);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (81,'Meryl','Cole','meryl.cole@carmax.com','+1 518 123 4496',81);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (82,'Jannet','Elliott','jannet.elliott@discoverfinancial.com','+1 716 123 4575',82);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (83,'Fae','Glenn','fae.glenn@nov.com','+1 914 123 4578',83);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (84,'Francisco','Cummings','francisco.cummings@nrgenergy.com','+1 315 123 4597',84);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (85,'Ermelinda','Benton','ermelinda.benton@westerndigital.com','+1 716 123 4599',85);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (86,'Lasonya','Beard','lasonya.beard@marriott.com','+1 716 123 4605',86);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (87,'Rayna','Tran','rayna.tran@libertyinteractive.com','+1 518 123 4617',87);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (88,'Annice','Boyer','annice.boyer@walmart.com','+1 518 123 4618',88);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (89,'Ja','Whitfield','ja.whitfield@exxonmobil.com','+1 914 123 4619',89);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (90,'Jaime','Lester','jaime.lester@apple.com','+1 518 123 4624',90);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (91,'Charlsie','Lindsey','charlsie.lindsey@berkshirehathaway.com','+1 215 123 4644',91);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (92,'Jannette','Henry','jannette.henry@mckesson.com','+1 610 123 4657',92);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (93,'Margart','Mccall','margart.mccall@unitedhealthgroup.com','+1 412 123 4662',93);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (94,'Twanna','Cleveland','twanna.cleveland@cvshealth.com','+1 814 123 4663',94);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (95,'Bronwyn','Horn','bronwyn.horn@gm.com','+1 610 123 4664',95);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (96,'Jon','Petersen','jon.petersen@ford.com','+1 610 123 4667',96);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (97,'Denny','Daniel','denny.daniel@att.com','+1 610 123 4669',97);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (98,'Avis','Moore','avis.moore@ge.com','+1 717 123 4674',98);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (99,'Eden','Burke','eden.burke@amerisourcebergen.com','+1 215 123 4676',99);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (100,'Elisha','Lloyd','elisha.lloyd@verizon.com','+1 412 123 4681',100);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (101,'Samara','Barnett','samara.barnett@chevron.com','+1 412 123 4684',101);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (102,'Nadia','Sawyer','nadia.sawyer@costco.com','+1 412 123 4688',102);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (103,'Melita','Holcomb','melita.holcomb@fanniemae.com','+1 412 123 4691',103);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (104,'Evita','Dickerson','evita.dickerson@thekrogerco.com','+1 717 123 4692',104);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (105,'Aundrea','Barry','aundrea.barry@amazon.com','+1 814 123 4696',105);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (106,'Irvin','Leach','irvin.leach@walgreensbootsalliance.com','+1 814 123 4697',106);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (107,'Kellee','Molina','kellee.molina@hp.com','+1 412 123 4700',107);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (108,'Ronny','Sykes','ronny.sykes@cardinal.com','+1 814 123 4706',108);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (109,'Ocie','Walton','ocie.walton@express-scripts.com','+1 215 123 4708',109);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (110,'Reva','Fuller','reva.fuller@jpmorganchase.com','+1 610 123 4714',110);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (111,'Marica','Henderson','marica.henderson@grainger.com','+1 412 123 4718',111);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (112,'Vanetta','Gross','vanetta.gross@boeing.com','+1 215 123 4721',112);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (113,'Audrea','Hayden','audrea.hayden@microsoft.com','+1 814 123 4722',113);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (114,'Neda','Mcfadden','neda.mcfadden@bankofamerica.com','+1 412 123 4724',114);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (115,'Dell','Wilkinson','dell.wilkinson@wellsfargo.com','+1 717 123 4730',115);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (116,'Sharee','Carver','sharee.carver@baxter.com','+1 215 123 4738',116);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (117,'Joaquina','Mcconnell','joaquina.mcconnell@homedepot.com','+1 717 123 4739',117);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (118,'Carlyn','Calderon','carlyn.calderon@citigroup.com','+1 412 123 4740',118);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (119,'Olga','Wilkins','olga.wilkins@phillips66.com','+1 717 123 4741',119);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (120,'Delpha','Golden','delpha.golden@stryker.com','+1 215 123 4743',120);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (121,'Sharell','Branch','sharell.branch@ibm.com','+1 610 123 4744',121);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (122,'Eleanor','Farley','eleanor.farley@valero.com','+1 215 123 4745',122);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (123,'Justina','Hayes','justina.hayes@antheminc.com','+1 717 123 4746',123);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (124,'Omer','Macdonald','omer.macdonald@pg.com','+1 215 123 4748',124);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (125,'Roseline','Hill','roseline.hill@airproducts.com','+1 717 123 4752',125);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (126,'Janeen','Holt','janeen.holt@statefarm.com','+1 412 123 4763',126);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (127,'Tory','Avila','tory.avila@google.com','+1 814 123 4766',127);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (128,'Keila','Slater','keila.slater@comcastcorporation.com','+1 412 123 4767',128);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (129,'Jazmin','Burch','jazmin.burch@target.com','+1 215 123 4768',129);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (130,'Tandy','Ramsey','tandy.ramsey@wnr.com','+1 215 123 4771',130);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (131,'Debra','Herring','debra.herring@jnj.com','+1 301 123 4794',131);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (132,'Monnie','Walker','monnie.walker@metlife.com','+1 410 123 4795',132);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (133,'Alvaro','Hooper','alvaro.hooper@adm.com','+1 410 123 4800',133);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (134,'Leandro','West','leandro.west@marathonpetroleum.com','+1 410 123 4805',134);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (135,'Lurline','Dennis','lurline.dennis@freddiemac.com','+1 410 012 4715',135);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (136,'Aurea','Sanders','aurea.sanders@pepsico.com','+1 301 123 4809',136);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (137,'Stacia','Rutledge','stacia.rutledge@utc.com','+1 410 123 4812',137);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (138,'Philomena','Elliott','philomena.elliott@aetna.com','+1 410 123 4813',138);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (139,'Gonzalo','Stone','gonzalo.stone@lowes.com','+1 301 123 4814',139);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (140,'So','Hardin','so.hardin@ups.com','+1 410 123 4816',140);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (141,'Lauren','Rodriquez','lauren.rodriquez@aig.com','+1 410 123 4817',141);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (142,'Loan','Patton','loan.patton@prudential.com','+1 301 123 4818',142);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (143,'Ha','Lowe','ha.lowe@intel.com','+1 301 123 4819',143);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (144,'Alexandra','Mcgowan','alexandra.mcgowan@humana.com','+1 410 123 4822',144);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (145,'Melissa','Nichols','melissa.nichols@disney.com','+1 410 123 4840',145);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (146,'Keesha','Cohen','keesha.cohen@cisco.com','+1 414 123 4363',146);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (147,'Elvera','Benson','elvera.benson@pfizer.com','+1 507 123 4387',147);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (148,'Lanora','Ray','lanora.ray@dow.com','+1 612 123 4436',148);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (149,'Jimmy','Weber','jimmy.weber@sysco.com','+1 219 123 4145',149);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (150,'Mae','Wilkinson','mae.wilkinson@fedex.com','+1 616 123 4190',150);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (151,'Lino','Noble','lino.noble@caterpillar.com','+1 313 123 4241',151);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (152,'Kathie','Jordan','kathie.jordan@lockheedmartin.com','+1 616 123 4259',152);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (153,'Heike','Emerson','heike.emerson@newyorklife.com','+1 319 123 4269',153);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (154,'Princess','Jones','princess.jones@uhsinc.com','+1 712 123 4284',154);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (155,'Doretha','Tyler','doretha.tyler@coca-colacompany.com','+1 712 123 4289',155);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (156,'Emilio','Duncan','emilio.duncan@hcahealthcare.com','+1 414 123 4312',156);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (157,'Glinda','Lambert','glinda.lambert@ingrammicro.com','+1 414 123 4364',157);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (158,'Emery','Schneider','emery.schneider@owens-minor.com','+1 320 123 4385',158);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (159,'Amado','Jefferson','amado.jefferson@energytransfer.com','+1 612 123 4407',159);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (160,'Hisako','Herrera','hisako.herrera@tysonfoods.com','+1 716 123 4456',160);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (161,'Jamee','Mclaughlin','jamee.mclaughlin@aa.com','+1 716 123 4582',161);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (162,'Audrie','Cannon','audrie.cannon@delta.com','+1 716 123 4627',162);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (163,'Lacey','Walters','lacey.walters@charter.com','+1 412 123 4677',163);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (164,'Weldon','Robinson','weldon.robinson@nationwide.com','+1 215 123 4702',164);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (165,'Solange','Gates','solange.gates@johnsoncontrols.com','+1 215 123 4749',165);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (166,'Jame','Calhoun','jame.calhoun@bestbuy.com','+1 814 123 4755',166);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (167,'Stefan','Walters','stefan.walters@merck.com','+1 301 123 4831',167);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (168,'Arlene','Elliott','arlene.elliott@advanceautoparts.com','+1 313 123 4167',168);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (169,'Sofia','Burnett','sofia.burnett@libertymutual.com','+1 219 123 4116',169);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (170,'Christal','Grant','christal.grant@gs.com','+1 616 123 4166',170);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (171,'Violeta','Stokes','violeta.stokes@honeywell.com','+1 810 123 4212',171);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (172,'Jackeline','Finley','jackeline.finley@mastercard.com','+1 313 123 4240',172);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (173,'Heidy','Massey','heidy.massey@massmutual.com','+1 414 123 4340',173);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (174,'Yolando','Wilkerson','yolando.wilkerson@oracle.com','+1 716 123 4485',174);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (175,'Lucinda','Hurley','lucinda.hurley@morganstanley.com','+1 518 123 4532',175);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (176,'Gita','Logan','gita.logan@cigna.com','+1 518 123 4562',176);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (177,'Felicita','Alston','felicita.alston@unitedcontinentalholdings.com','+1 315 123 4585',177);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (178,'Lela','Ewing','lela.ewing@allstate.com','+1 412 123 4659',178);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (179,'Gabriel','Pollard','gabriel.pollard@tiaa.org','+1 717 123 4679',179);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (180,'Vincenza','Walton','vincenza.walton@intlfcstone.com','+1 215 123 4709',180);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (181,'Shandra','Higgins','shandra.higgins@chsinc.com','+1 215 123 4751',181);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (182,'Thomasena','Pickett','thomasena.pickett@americanexpress.com','+1 410 123 4807',182);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (183,'Aaron','Holder','aaron.holder@gilead.com','+1 410 123 4829',183);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (184,'Carlos','Moody','carlos.moody@publix.com','+86 811 012 4093',184);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (185,'Javier','Kim','javier.kim@generaldynamics.com','+86 123 012 4095',185);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (186,'Fran','Battle','fran.battle@tjx.com','+91 80 012 4123',186);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (187,'Shelia','Brewer','shelia.brewer@conocophillips.com','+49 89 012 4129',187);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (188,'Jeri','Randall','jeri.randall@nike.com','+49 90 012 4131',188);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (189,'Jermaine','Cote','jermaine.cote@wfscorp.com','+49 91 012 4133',189);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (190,'Kenneth','Simmons','kenneth.simmons@3m.com','+39 6 012 4543',190);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (191,'Dulce','Matthews','dulce.matthews@mondelezinternational.com','+1 416 012 4147',191);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (192,'Kristle','Cain','kristle.cain@exeloncorp.com','+39 55 012 4547',192);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (193,'Erika','Murray','erika.murray@21cf.com','+39 55 012 4551',193);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (194,'Maud','Cohen','maud.cohen@johndeere.com','+39 55 012 4555',194);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (195,'Rolanda','Vang','rolanda.vang@appliedmaterials.com','+39 10 012 4365',195);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (196,'Renea','Carney','renea.carney@dupont.com','+39 55 012 4565',196);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (197,'Sybil','Harding','sybil.harding@avnet.com','+39 10 012 4367',197);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (198,'Colette','Estrada','colette.estrada@eastman.com','+81 565 012 4567',198);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (199,'Maximo','Ortega','maximo.ortega@macysinc.com','+39 10 012 4369',199);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (200,'Kina','Larsen','kina.larsen@enterpriseproducts.com','+39 55 012 4569',200);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (201,'Jarvis','Allison','jarvis.allison@travelers.com','+39 10 012 4371',201);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (202,'Collene','Newton','collene.newton@sonicautomotive.com','+39 49 012 4373',202);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (203,'Vella','Hancock','vella.hancock@pmi.com','+39 49 012 4375',203);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (204,'Retta','Martinez','retta.martinez@riteaid.com','+39 49 012 4377',204);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (205,'Annelle','Lawrence','annelle.lawrence@techdata.com','+39 10 012 4379',205);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (206,'Sherron','Simon','sherron.simon@ally.com','+39 10 012 4381',206);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (207,'Carita','Mcintyre','carita.mcintyre@northwesternmutual.com','+86 10 012 4165',207);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (208,'Stephaine','Booker','stephaine.booker@tsocorp.com','+39 55 012 4559',208);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (209,'Emilie','Parsons','emilie.parsons@timewarner.com','+39 10 012 4363',209);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (210,'Jaleesa','Bowen','jaleesa.bowen@cstbrands.com','+66 76 012 4633',210);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (211,'Jeannie','Poole','jeannie.poole@aboutmcdonalds.com','+91 80 012 4637',211);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (212,'Adrienne','Lang','adrienne.lang@qualcomm.com','+39 2 012 4771',212);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (213,'Jess','Nguyen','jess.nguyen@searsholdings.com','+39 2 012 4773',213);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (214,'Tandy','House','tandy.house@ebay.com','+39 2 012 4775',214);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (215,'Herman','Stokes','herman.stokes@capitalone.com','+39 49 012 4777',215);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (216,'Keesha','Lambert','keesha.lambert@emc.com','+39 49 012 4779',216);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (217,'Lauren','Williamson','lauren.williamson@usaa.com','+39 49 012 4781',217);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (218,'Lucius','Abbott','lucius.abbott@lennar.com','+91 80 012 4783',218);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (219,'Beatrice','Ford','beatrice.ford@duke-energy.com','+91 80 012 4785',219);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (220,'Tamisha','Vargas','tamisha.vargas@twc.com','+91 80 012 4793',220);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (221,'Dick','Lamb','dick.lamb@halliburton.com','+91 80 012 4803',221);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (222,'Yolanda','Ball','yolanda.ball@gamestopcorp.com','+91 80 012 4809',222);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (223,'Jerica','Brooks','jerica.brooks@northropgrumman.com','+91 11 012 4811',223);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (224,'Nichol','Carter','nichol.carter@arrow.com','+91 11 012 4813',224);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (225,'Bobby','Wilson','bobby.wilson@rsac.com','+91 11 012 4817',225);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (226,'Eve','Saunders','eve.saunders@officedepot.com','+91 80 012 4823',226);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (227,'Ginger','Atkinson','ginger.atkinson@nordstrom.com','+91 33 012 4825',227);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (228,'Kenton','Harrell','kenton.harrell@kindermorgan.com','+91 33 012 4827',228);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (229,'Misti','Velazquez','misti.velazquez@aramark.com','+91 80 012 4829',229);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (230,'Brandie','Buchanan','brandie.buchanan@davita.com','+91 22 012 4831',230);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (231,'Kandi','Holden','kandi.holden@molinahealthcare.com','+91 80 012 4833',231);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (232,'Lashonda','Cunningham','lashonda.cunningham@wellcare.com','+91 11 012 4835',232);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (233,'Roxanne','Michalkow','roxanne.michalkow@cbscorporation.com','+91 172 012 4837',233);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (234,'Phuong','Sanders','phuong.sanders@visa.com','+91 22 012 4839',234);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (235,'Vida','Kline','vida.kline@lfg.com','+91 80 012 4841',235);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (236,'Mayola','Houston','mayola.houston@ecolab.com','+91 80 012 4843',236);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (237,'Cristine','Bell','cristine.bell@kelloggcompany.com','+91 11 012 4851',237);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (238,'Shamika','Bauer','shamika.bauer@chrobinson.com','+91 11 012 4853',238);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (239,'Rebbeca','Day','rebbeca.day@textron.com','+91 172 012 4861',239);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (240,'Maryrose','Cain','maryrose.cain@loews.com','+91 80 012 4869',240);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (241,'Johnie','Rojas','johnie.rojas@itw.com','+91 80 012 4887',241);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (242,'Verla','Christian','verla.christian@synnex.com','+91 80 012 4889',242);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (243,'Teressa','Hewitt','teressa.hewitt@hormelfoods.com','+91 80 012 4891',243);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (244,'Shenna','Blair','shenna.blair@viacom.com','+91 141 012 4895',244);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (245,'Latoyia','Burt','latoyia.burt@hollyfrontier.com','+91 80 012 4907',245);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (246,'Shaquita','Norman','shaquita.norman@landolakesinc.com','+91 80 012 4919',246);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (247,'Myrna','Romero','myrna.romero@celgene.com','+91 80 012 4931',247);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (248,'Bill','Stein','bill.stein@devonenergy.com','+39 6 012 4501',248);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (249,'Olivia','Conrad','olivia.conrad@pbfenergy.com','+39 6 012 4503',249);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (250,'Marianne','Bryant','marianne.bryant@genworth.com','+39 6 012 4507',250);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (251,'Dustin','Paul','dustin.paul@yum.com','+39 6 012 4511',251);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (252,'Elroy','Wolf','elroy.wolf@ti.com','+39 6 012 4515',252);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (253,'Jadwiga','Morrison','jadwiga.morrison@cdw.com','+39 6 012 4519',253);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (254,'Isabella','Ortega','isabella.ortega@paypal.com','+39 6 012 4531',254);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (255,'Katia','Case','katia.case@wm.com','+39 6 012 4535',255);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (256,'Enriqueta','Odom','enriqueta.odom@mmc.com','+39 6 012 4539',256);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (257,'Don','Hansen','don.hansen@chk.com','+39 10 012 4385',257);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (258,'Herb','Sloan','herb.sloan@pricelinegroup.com','+39 10 012 4387',258);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (259,'Blanche','Robbins','blanche.robbins@parker.com','+39 6 012 4389',259);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (260,'Gaynell','Burton','gaynell.burton@oxy.com','+39 6 012 4391',260);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (261,'Marhta','Baldwin','marhta.baldwin@guardianlife.com','+39 49 012 4409',261);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (262,'Peter','Gamble','peter.gamble@mgmresorts.com','+39 49 012 4411',262);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (263,'Nathan','Callahan','nathan.callahan@farmers.com','+39 10 012 4413',263);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (264,'Tereasa','Padilla','tereasa.padilla@jcpenney.com','+39 49 012 4415',264);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (265,'Merrilee','Phillips','merrilee.phillips@conedison.com','+39 49 012 4417',265);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (266,'Tisha','Mcdonald','tisha.mcdonald@autoliv.com','+39 49 012 4419',266);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (267,'Napoleon','Cruz','napoleon.cruz@cognizant.com','+39 10 012 4421',267);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (268,'Basilia','Downs','basilia.downs@vfc.com','+66 76 012 4441',268);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (269,'Alessandra','Estrada','alessandra.estrada@ameriprise.com','+41 56 012 3527',269);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (270,'Sherron','Flores','sherron.flores@fnf.com','+41 57 012 3529',270);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (271,'Elicia','Townsend','elicia.townsend@csc.com','+41 58 012 3531',271);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (272,'Percy','Hernandez','percy.hernandez@lb.com','+41 59 012 3533',272);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (273,'Shelia','Cain','shelia.cain@jacobs.com','+41 60 012 3535',273);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (274,'Charlene','Booker','charlene.booker@republicservices.com','+41 61 012 3537',274);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (275,'Mac','Mckay','mac.mckay@principal.com','+41 62 012 3539',275);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (276,'Jamison','Merritt','jamison.merritt@rossstores.com','+41 63 012 3541',276);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (277,'Quinton','Woods','quinton.woods@bedbathandbeyond.com','+41 64 012 3543',277);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (278,'Cathey','Mcdowell','cathey.mcdowell@csx.com','+41 65 012 3545',278);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (279,'Deneen','Hays','deneen.hays@toysrusinc.com','+41 66 012 3547',279);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (280,'Jackson','Morin','jackson.morin@sands.com','+41 67 012 3549',280);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (281,'Margo','Hoffman','margo.hoffman@leucadia.com','+41 2 012 3551',281);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (282,'Adah','Myers','adah.myers@dom.com','+41 3 012 3553',282);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (283,'Florene','Craig','florene.craig@ussteel.com','+41 81 012 3555',283);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (284,'Janey','Burris','janey.burris@l-3com.com','+41 81 012 3557',284);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (285,'Evelina','Campbell','evelina.campbell@edisoninvestor.com','+41 71 012 3559',285);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (286,'Thi','Maxwell','thi.maxwell@entergy.com','+41 71 012 3561',286);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (287,'Aleshia','Reese','aleshia.reese@adp.com','+41 4 012 3563',287);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (288,'Dorotha','Wong','dorotha.wong@firstdata.com','+41 6 012 3565',288);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (289,'Estela','Donovan','estela.donovan@blackrock.com','+41 7 012 3567',289);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (290,'Hassan','Rivers','hassan.rivers@westrock.com','+41 31 012 3569',290);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (291,'Jen','Mcmahon','jen.mcmahon@voya.com','+41 68 012 3571',291);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (292,'Barbie','Carter','barbie.carter@sherwin.com','+41 5 012 3573',292);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (293,'Cleo','English','cleo.english@hiltonworldwide.com','+41 8 012 3575',293);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (294,'Liana','Pena','liana.pena@corning.com','+41 1 012 3577',294);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (295,'Francina','Slater','francina.slater@rrdonnelley.com','+41 9 012 3579',295);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (296,'Josie','Steele','josie.steele@stanleyblackanddecker.com','+41 69 012 3581',296);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (297,'Maryrose','Roberson','maryrose.roberson@xcelenergy.com','+41 70 012 3583',297);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (298,'Elly','Salinas','elly.salinas@kiewit.com','+91 80 012 3687',298);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (299,'Ginny','Carlson','ginny.carlson@orate.murphyusa.com','+91 80 012 3689',299);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (300,'Mozelle','Schneider','mozelle.schneider@cbre.com','+91 80 012 3695',300);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (301,'Adam','Jacobs','adam.jacobs@univar.com','+91 80 012 3699',301);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (302,'Vernia','Hayes','vernia.hayes@drhorton.com','+91 80 012 3701',302);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (303,'Ismael','Solomon','ismael.solomon@elcompanies.com','+91 80 012 3703',303);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (304,'Ivey','Rutledge','ivey.rutledge@praxair.com','+91 80 012 3709',304);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (305,'Jame','Terrell','jame.terrell@biogen.com','+91 80 012 3711',305);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (306,'Daina','Combs','daina.combs@mosaicco.com','+91 80 012 3715',306);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (307,'Lashunda','Davidson','lashunda.davidson@statestreet.com','+91 80 012 3717',307);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (308,'Arlette','Thornton','arlette.thornton@unum.com','+91 80 012 3719',308);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (309,'Darron','Robertson','darron.robertson@reynoldsamerican.com','+91 80 012 3723',309);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (310,'Maple','Barnett','maple.barnett@core-mark.com','+91 80 012 3725',310);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (311,'Charlsie','Carey','charlsie.carey@group1auto.com','+91 80 012 3731',311);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (312,'Frank','Shannon','frank.shannon@henryschein.com','+91 80 012 3733',312);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (313,'Josiah','Beasley','josiah.beasley@hertz.com','+91 80 012 3735',313);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (314,'Annabelle','Butler','annabelle.butler@thrivent.com','+91 80 012 3737',314);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (315,'Ed','Mueller','ed.mueller@nscorp.com','+91 80 012 3739',315);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (316,'Colleen','Estrada','colleen.estrada@rgare.com','+91 80 012 3741',316);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (317,'Nikia','Kent','nikia.kent@pseg.com','+91 80 012 3745',317);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (318,'Amber','Brady','amber.brady@c-a-m.com','+91 80 012 3837',318);
Insert into CONTACTS (CONTACT_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE,CUSTOMER_ID) values (319,'Wendell','Massey','wendell.massey@bbt.com','+86 10 012 3839',319);

Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (1,4,'Pending',56,convert(DATETIME, '15-OCT-17',101),null,null,DATEADD(month,3,convert(DATETIME,'15-OCT-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (10,44,'Pending',56,convert(DATETIME, '24-JAN-17',101),null,null,DATEADD(month,3,convert(DATETIME,'24-JAN-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (16,16,'Pending',62,convert(DATETIME, '27-SEP-16',101),null,null,DATEADD(month,3,convert(DATETIME,'27-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (21,21,'Pending',60,convert(DATETIME, '27-MAY-17',101),null,null,DATEADD(month,3,convert(DATETIME,'27-MAY-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (44,2,'Pending',55,convert(DATETIME, '20-FEB-17',101),null,null,DATEADD(month,3,convert(DATETIME,'20-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (46,58,'Pending',62,convert(DATETIME, '20-FEB-17',101),null,null,DATEADD(month,3,convert(DATETIME,'20-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (50,62,'Pending',55,convert(DATETIME, '02-OCT-16',101),null,null,DATEADD(month,3,convert(DATETIME,'02-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (55,66,'Pending',59,convert(DATETIME, '29-SEP-16',101),null,null,DATEADD(month,3,convert(DATETIME,'29-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (68,9,'Pending',54,convert(DATETIME, '13-JUN-16',101),null,null,DATEADD(month,3,convert(DATETIME,'13-JUN-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (78,2,'Pending',64,convert(DATETIME, '14-DEC-15',101),null,null,DATEADD(month,3,convert(DATETIME,'14-DEC-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (85,4,'Pending',55,convert(DATETIME, '01-DEC-16',101),null,null,DATEADD(month,3,convert(DATETIME,'01-DEC-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (86,5,'Pending',60,convert(DATETIME, '30-NOV-16',101),null,null,DATEADD(month,3,convert(DATETIME,'30-NOV-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (90,8,'Pending',55,convert(DATETIME, '28-OCT-15',101),null,null,DATEADD(month,3,convert(DATETIME,'28-OCT-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (91,9,'Pending',56,convert(DATETIME, '28-OCT-16',101),null,null,DATEADD(month,3,convert(DATETIME,'28-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (100,16,'Pending',54,convert(DATETIME, '05-JAN-17',101),null,null,DATEADD(month,3,convert(DATETIME,'05-JAN-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (101,3,'Pending',55,convert(DATETIME, '03-JAN-17',101),null,null,DATEADD(month,3,convert(DATETIME,'03-JAN-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (103,17,'Pending',64,convert(DATETIME, '08-FEB-16',101),null,null,DATEADD(month,3,convert(DATETIME,'08-FEB-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (105,1,'Pending',54,convert(DATETIME, '17-NOV-16',101),null,null,DATEADD(month,3,convert(DATETIME,'17-NOV-16',101)));

Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (2,4,'Shipped',59,convert(DATETIME, '26-APR-15',101),convert(DATETIME,'2015-05-01',101),NULL,DATEADD(month,3,convert(DATETIME, '26-APR-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (3,5,'Shipped',59,convert(DATETIME, '26-APR-17',101),convert(DATETIME,'2017-04-30',101),NULL,DATEADD(month,3,convert(DATETIME, '26-APR-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (4,8,'Shipped',59,convert(DATETIME, '09-APR-15',101),convert(DATETIME,'2015-04-10',101),NULL,DATEADD(month,3,convert(DATETIME, '09-APR-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (6,6,'Shipped',62,convert(DATETIME, '09-APR-15',101),convert(DATETIME,'2015-04-12',101),NULL,DATEADD(month,3,convert(DATETIME, '09-APR-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (7,7,'Shipped',55,convert(DATETIME, '15-FEB-17',101),convert(DATETIME,'2017-02-16',101),NULL,DATEADD(month,3,convert(DATETIME, '15-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (8,8,'Shipped',56,convert(DATETIME, '14-FEB-17',101),convert(DATETIME,'2017-02-16',101),NULL,DATEADD(month,3,convert(DATETIME, '14-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (9,9,'Shipped',64,convert(DATETIME, '14-FEB-17',101),convert(DATETIME,'2017-02-18',101),NULL,DATEADD(month,3,convert(DATETIME, '14-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (11,45,'Shipped',10,convert(DATETIME, '29-NOV-16',101),convert(DATETIME,'2016-12-01',101),NULL,DATEADD(month,3,convert(DATETIME, '29-NOV-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (12,46,'Shipped',11,convert(DATETIME, '29-NOV-16',101),convert(DATETIME,'2016-12-04',101),NULL,DATEADD(month,3,convert(DATETIME, '29-NOV-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (13,47,'Shipped',13,convert(DATETIME, '29-NOV-16',101),convert(DATETIME,'2016-12-03',101),NULL,DATEADD(month,3,convert(DATETIME, '29-NOV-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (14,48,'Shipped',20,convert(DATETIME, '28-SEP-17',101),convert(DATETIME,'2017-10-01',101),NULL,DATEADD(month,3,convert(DATETIME, '28-SEP-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (15,49,'Shipped',15,convert(DATETIME, '27-SEP-17',101),convert(DATETIME,'2017-10-01',101),NULL,DATEADD(month,3,convert(DATETIME, '27-SEP-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (17,17,'Shipped',17,convert(DATETIME, '27-SEP-17',101),convert(DATETIME,'2017-09-28',101),NULL,DATEADD(month,3,convert(DATETIME, '27-SEP-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (18,18,'Shipped',8,convert(DATETIME, '16-AUG-16',101),convert(DATETIME,'2016-08-18',101),NULL,DATEADD(month,3,convert(DATETIME, '16-AUG-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (19,19,'Shipped',2,convert(DATETIME, '27-MAY-16',101),convert(DATETIME,'2016-05-28',101),NULL,DATEADD(month,3,convert(DATETIME, '27-MAY-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (20,20,'Shipped',5,convert(DATETIME, '27-MAY-17',101),convert(DATETIME,'2017-06-01',101),NULL,DATEADD(month,3,convert(DATETIME, '27-MAY-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (23,23,'Shipped',54,convert(DATETIME, '07-SEP-16',101),convert(DATETIME,'2016-09-11',101),NULL,DATEADD(month,3,convert(DATETIME, '07-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (24,41,'Shipped',19,convert(DATETIME, '07-SEP-16',101),convert(DATETIME,'2016-09-11',101),NULL,DATEADD(month,3,convert(DATETIME, '07-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (25,42,'Shipped',34,convert(DATETIME, '24-AUG-16',101),convert(DATETIME,'2016-08-25',101),NULL,DATEADD(month,3,convert(DATETIME, '24-AUG-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (26,46,'Shipped',62,convert(DATETIME, '16-AUG-16',101),convert(DATETIME,'2016-08-19',101),NULL,DATEADD(month,3,convert(DATETIME, '16-AUG-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (29,44,'Shipped',12,convert(DATETIME, '14-AUG-17',101),convert(DATETIME,'2017-08-18',101),NULL,DATEADD(month,3,convert(DATETIME, '14-AUG-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (30,45,'Shipped',23,convert(DATETIME, '12-AUG-17',101),convert(DATETIME,'2017-08-15',101),NULL,DATEADD(month,3,convert(DATETIME, '12-AUG-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (32,47,'Shipped',22,convert(DATETIME, '09-MAR-17',101),convert(DATETIME,'2017-03-14',101),NULL,DATEADD(month,3,convert(DATETIME, '09-MAR-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (33,48,'Shipped',21,convert(DATETIME, '07-MAR-17',101),convert(DATETIME,'2017-03-11',101),NULL,DATEADD(month,3,convert(DATETIME, '07-MAR-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (34,49,'Shipped',67,convert(DATETIME, '12-JUN-16',101),convert(DATETIME,'2016-06-13',101),NULL,DATEADD(month,3,convert(DATETIME, '12-JUN-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (35,50,'Shipped',87,convert(DATETIME, '05-SEP-16',101),convert(DATETIME,'2016-09-08',101),NULL,DATEADD(month,3,convert(DATETIME, '05-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (36,51,'Shipped',88,convert(DATETIME, '05-SEP-17',101),convert(DATETIME,'2017-09-08',101),NULL,DATEADD(month,3,convert(DATETIME, '05-SEP-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (37,52,'Shipped',89,convert(DATETIME, '19-FEB-17',101),convert(DATETIME,'2017-02-24',101),NULL,DATEADD(month,3,convert(DATETIME, '19-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (39,54,'Shipped',62,convert(DATETIME, '22-OCT-16',101),convert(DATETIME,'2016-10-26',101),NULL,DATEADD(month,3,convert(DATETIME, '22-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (40,55,'Shipped',62,convert(DATETIME, '11-MAY-17',101),convert(DATETIME,'2017-05-12',101),NULL,DATEADD(month,3,convert(DATETIME, '11-MAY-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (41,9,'Shipped',59,convert(DATETIME, '11-MAY-17',101),convert(DATETIME,'2017-05-16',101),NULL,DATEADD(month,3,convert(DATETIME, '11-MAY-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (43,47,'Shipped',62,convert(DATETIME, '02-MAY-15',101),convert(DATETIME,'2015-05-05',101),NULL,DATEADD(month,3,convert(DATETIME, '02-MAY-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (45,57,'Shipped',64,convert(DATETIME, '20-FEB-17',101),convert(DATETIME,'2017-02-25',101),NULL,DATEADD(month,3,convert(DATETIME, '20-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (49,61,'Shipped',55,convert(DATETIME, '02-OCT-16',101),convert(DATETIME,'2016-10-05',101),NULL,DATEADD(month,3,convert(DATETIME, '02-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (51,63,'Shipped',59,convert(DATETIME, '02-OCT-16',101),convert(DATETIME,'2016-10-05',101),NULL,DATEADD(month,3,convert(DATETIME, '02-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (52,64,'Shipped',60,convert(DATETIME, '02-OCT-16',101),convert(DATETIME,'2016-10-05',101),NULL,DATEADD(month,3,convert(DATETIME, '02-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (53,48,'Shipped',62,convert(DATETIME, '29-SEP-16',101),convert(DATETIME,'2016-10-04',101),NULL,DATEADD(month,3,convert(DATETIME, '29-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (54,65,'Shipped',56,convert(DATETIME, '29-SEP-16',101),convert(DATETIME,'2016-10-04',101),NULL,DATEADD(month,3,convert(DATETIME, '29-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (57,68,'Shipped',57,convert(DATETIME, '24-AUG-17',101),convert(DATETIME,'2017-08-27',101),NULL,DATEADD(month,3,convert(DATETIME, '24-AUG-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (58,69,'Shipped',57,convert(DATETIME, '24-AUG-16',101),convert(DATETIME,'2016-08-25',101),NULL,DATEADD(month,3,convert(DATETIME, '24-AUG-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (59,70,'Shipped',59,convert(DATETIME, '29-JUN-15',101),convert(DATETIME,'2015-07-03',101),NULL,DATEADD(month,3,convert(DATETIME, '29-JUN-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (60,1,'Shipped',62,convert(DATETIME, '30-JUN-17',101),convert(DATETIME,'2017-07-02',101),NULL,DATEADD(month,3,convert(DATETIME, '30-JUN-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (61,2,'Shipped',54,convert(DATETIME, '30-JUN-16',101),convert(DATETIME,'2016-07-04',101),NULL,DATEADD(month,3,convert(DATETIME, '30-JUN-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (62,3,'Shipped',62,convert(DATETIME, '30-JUN-15',101),convert(DATETIME,'2015-07-02',101),NULL,DATEADD(month,3,convert(DATETIME, '30-JUN-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (63,4,'Shipped',61,convert(DATETIME, '30-JUN-16',101),convert(DATETIME,'2016-07-02',101),NULL,DATEADD(month,3,convert(DATETIME, '30-JUN-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (64,5,'Shipped',64,convert(DATETIME, '21-JUN-16',101),convert(DATETIME,'2016-06-22',101),NULL,DATEADD(month,3,convert(DATETIME, '21-JUN-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (65,6,'Shipped',64,convert(DATETIME, '21-JUN-13',101),convert(DATETIME,'2013-06-23',101),NULL,DATEADD(month,3,convert(DATETIME, '21-JUN-13',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (71,46,'Shipped',54,convert(DATETIME, '21-FEB-17',101),convert(DATETIME,'2017-02-22',101),NULL,DATEADD(month,3,convert(DATETIME, '21-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (72,47,'Shipped',64,convert(DATETIME, '17-FEB-16',101),convert(DATETIME,'2016-02-18',101),NULL,DATEADD(month,3,convert(DATETIME, '17-FEB-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (73,48,'Shipped',100,convert(DATETIME, '17-FEB-16',101),convert(DATETIME,'2016-02-22',101),NULL,DATEADD(month,3,convert(DATETIME, '17-FEB-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (74,49,'Shipped',64,convert(DATETIME, '10-FEB-17',101),convert(DATETIME,'2017-02-11',101),NULL,DATEADD(month,3,convert(DATETIME, '10-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (75,16,'Shipped',101,convert(DATETIME, '10-FEB-17',101),convert(DATETIME,'2017-02-14',101),NULL,DATEADD(month,3,convert(DATETIME, '10-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (76,17,'Shipped',55,convert(DATETIME, '10-FEB-17',101),convert(DATETIME,'2017-02-14',101),NULL,DATEADD(month,3,convert(DATETIME, '10-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (77,1,'Shipped',60,convert(DATETIME, '02-JAN-17',101),convert(DATETIME,'2017-01-06',101),NULL,DATEADD(month,3,convert(DATETIME, '02-JAN-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (79,2,'Shipped',64,convert(DATETIME, '14-DEC-16',101),convert(DATETIME,'2016-12-17',101),NULL,DATEADD(month,3,convert(DATETIME, '14-DEC-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (80,3,'Shipped',64,convert(DATETIME, '13-DEC-16',101),convert(DATETIME,'2016-12-18',101),NULL,DATEADD(month,3,convert(DATETIME, '13-DEC-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (81,49,'Shipped',62,convert(DATETIME, '13-DEC-16',101),convert(DATETIME,'2016-12-16',101),NULL,DATEADD(month,3,convert(DATETIME, '13-DEC-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (82,44,'Shipped',60,convert(DATETIME, '03-DEC-16',101),convert(DATETIME,'2016-12-04',101),NULL,DATEADD(month,3,convert(DATETIME, '03-DEC-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (83,16,'Shipped',62,convert(DATETIME, '02-DEC-16',101),convert(DATETIME,'2016-12-07',101),NULL,DATEADD(month,3,convert(DATETIME, '02-DEC-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (84,3,'Shipped',64,convert(DATETIME, '01-DEC-15',101),convert(DATETIME,'2015-12-05',101),NULL,DATEADD(month,3,convert(DATETIME, '01-DEC-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (88,6,'Shipped',61,convert(DATETIME, '01-NOV-17',101),convert(DATETIME,'2017-11-06',101),NULL,DATEADD(month,3,convert(DATETIME, '01-NOV-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (89,7,'Shipped',55,convert(DATETIME, '27-OCT-15',101),convert(DATETIME,'2015-11-01',101),NULL,DATEADD(month,3,convert(DATETIME, '27-OCT-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (92,44,'Shipped',59,convert(DATETIME, '28-OCT-15',101),convert(DATETIME,'2015-10-29',101),NULL,DATEADD(month,3,convert(DATETIME, '28-OCT-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (93,17,'Shipped',62,convert(DATETIME, '27-OCT-16',101),convert(DATETIME,'2016-10-30',101),NULL,DATEADD(month,3,convert(DATETIME, '27-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (94,1,'Shipped',62,convert(DATETIME, '27-OCT-17',101),convert(DATETIME,'2017-10-31',101),NULL,DATEADD(month,3,convert(DATETIME, '27-OCT-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (95,45,'Shipped',59,convert(DATETIME, '19-SEP-16',101),convert(DATETIME,'2016-09-21',101),NULL,DATEADD(month,3,convert(DATETIME, '19-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (96,46,'Shipped',56,convert(DATETIME, '14-SEP-16',101),convert(DATETIME,'2016-09-17',101),NULL,DATEADD(month,3,convert(DATETIME, '14-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (98,48,'Shipped',55,convert(DATETIME, '18-MAR-17',101),convert(DATETIME,'2017-03-19',101),NULL,DATEADD(month,3,convert(DATETIME, '18-MAR-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (99,49,'Shipped',60,convert(DATETIME, '07-JAN-17',101),convert(DATETIME,'2017-01-11',101),NULL,DATEADD(month,3,convert(DATETIME, '07-JAN-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (102,45,'Shipped',61,convert(DATETIME, '20-DEC-16',101),convert(DATETIME,'2016-12-22',101),NULL,DATEADD(month,3,convert(DATETIME, '20-DEC-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (104,18,'Shipped',60,convert(DATETIME, '01-FEB-17',101),convert(DATETIME,'2017-02-04',101),NULL,DATEADD(month,3,convert(DATETIME, '01-FEB-17',101)));

Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (5,5,'Canceled',56,convert(DATETIME, '09-APR-17',101),NULL,convert(DATETIME,'10-APR-17',101),DATEADD(MONTH,3,convert(DATETIME, '09-APR-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (27,43,'Canceled',36,convert(DATETIME, '16-AUG-16',101),NULL,convert(DATETIME,'16-AUG-16',101),DATEADD(MONTH,3,convert(DATETIME, '16-AUG-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (38,53,'Canceled',57,convert(DATETIME, '31-MAY-15',101),NULL,convert(DATETIME,'02-JUN-15',101),DATEADD(MONTH,3,convert(DATETIME, '31-MAY-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (42,56,'Canceled',64,convert(DATETIME, '03-MAY-15',101),NULL,convert(DATETIME,'05-MAY-15',101),DATEADD(MONTH,3,convert(DATETIME, '03-MAY-15',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (47,59,'Canceled',62,convert(DATETIME, '10-OCT-16',101),NULL,convert(DATETIME,'10-OCT-16',101),DATEADD(MONTH,3,convert(DATETIME, '10-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (56,67,'Canceled',55,convert(DATETIME, '29-SEP-16',101),NULL,convert(DATETIME,'30-SEP-16',101),DATEADD(MONTH,3,convert(DATETIME, '29-SEP-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (66,7,'Canceled',61,convert(DATETIME, '21-JUN-16',101),NULL,convert(DATETIME,'25-JUN-16',101),DATEADD(MONTH,3,convert(DATETIME, '21-JUN-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (67,8,'Canceled',61,convert(DATETIME, '14-JUN-16',101),NULL,convert(DATETIME,'15-JUN-16',101),DATEADD(MONTH,3,convert(DATETIME, '14-JUN-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (70,45,'Canceled',61,convert(DATETIME, '21-FEB-17',101),NULL,convert(DATETIME,'22-FEB-17',101),DATEADD(MONTH,3,convert(DATETIME, '21-FEB-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (97,47,'Canceled',60,convert(DATETIME, '12-JUL-16',101),NULL,convert(DATETIME,'13-JUL-16',101),DATEADD(MONTH,3,convert(DATETIME, '12-JUL-16',101)));

Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (22,22,'Canceled',37,convert(DATETIME, '26-MAY-16',101),convert(DATETIME, '27-MAY-16',101),convert(DATETIME, '28-MAY-16',101),DATEADD(MONTH,3,convert(DATETIME, '26-MAY-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (28,6,'Canceled',57,convert(DATETIME, '15-AUG-17',101),convert(DATETIME, '20-AUG-17',101),convert(DATETIME, '22-AUG-17',101),DATEADD(MONTH,3,convert(DATETIME, '15-AUG-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (31,46,'Canceled',12,convert(DATETIME, '12-AUG-17',101),convert(DATETIME, '14-AUG-17',101),convert(DATETIME, '16-AUG-17',101),DATEADD(MONTH,3,convert(DATETIME, '12-AUG-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (48,60,'Canceled',64,convert(DATETIME, '10-OCT-16',101),convert(DATETIME, '11-OCT-16',101),convert(DATETIME, '14-OCT-16',101),DATEADD(MONTH,3,convert(DATETIME, '10-OCT-16',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (69,44,'Canceled',54,convert(DATETIME, '17-MAR-17',101),convert(DATETIME, '18-MAR-17',101),convert(DATETIME, '20-MAR-17',101),DATEADD(MONTH,3,convert(DATETIME, '17-MAR-17',101)));
Insert into ORDERS (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,SHIPPED_DATE,CANCELED_DATE,LIMIT_PAYMENT_DATE) values (87,7,'Canceled',57,convert(DATETIME, '01-DEC-16',101),convert(DATETIME, '06-DEC-16',101),convert(DATETIME, '10-DEC-16',101),DATEADD(MONTH,3,convert(DATETIME, '01-DEC-16',101)));



Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (1,13,178,121,1999.89);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (2,8,141,97,419.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (3,8,190,127,948.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (4,7,262,79,1449.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (5,5,31,78,443.72);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (6,6,89,150,749.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (7,2,230,49,136.69);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (8,8,100,68,97.88);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (9,8,93,132,2116.72);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (10,9,119,107,899.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (11,2,40,79,299.89);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (12,12,96,120,141.56);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (13,10,245,138,1699);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (14,8,238,64,741.78);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (15,8,241,77,1756);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (16,9,135,76,127.88);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (17,1,149,51,282.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (18,8,136,32,826.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (19,10,200,93,620.95);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (20,2,41,78,299.89);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (21,4,1,135,640.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (22,13,281,73,864.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (23,10,187,110,353.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (24,6,276,99,1163.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (25,8,2,65,2554.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (26,5,151,36,281.97);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (27,13,111,102,827.37);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (28,8,40,105,299.89);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (29,11,115,52,699.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (30,7,155,64,588.95);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (31,6,171,103,382.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (32,6,102,147,2042.69);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (33,8,13,75,704.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (34,6,101,62,635.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (35,5,186,41,1449.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (36,8,141,144,419.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (37,3,147,100,283.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (38,7,49,139,1499.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (39,9,144,125,289.79);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (40,11,184,88,999.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (41,9,55,61,150.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (42,7,139,149,65.92);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (43,8,169,73,1844.89);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (44,4,158,100,2009.46);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (45,3,68,88,766.11);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (46,11,89,119,749.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (47,5,149,123,282.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (48,2,158,98,2009.46);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (49,1,172,104,358.49);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (50,1,215,49,829.89);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (51,2,7,64,680.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (52,1,235,123,41.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (53,4,177,96,1759.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (54,3,68,134,766.11);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (55,3,260,79,267.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (56,1,84,70,440.3);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (57,6,164,44,1850);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (58,12,62,148,789.79);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (59,9,154,82,1204.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (60,7,189,146,649);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (61,7,52,45,1676.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (62,1,188,130,482.49);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (63,2,54,47,1019.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (64,2,126,52,640.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (65,6,262,118,1449.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (66,9,279,90,1318.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (67,10,239,45,739.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (68,9,177,84,1759.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (69,9,261,55,1504.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (70,6,50,68,8867.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (71,3,195,75,1055.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (72,3,273,145,443.64);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (73,4,45,54,2501.69);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (74,6,187,137,353.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (75,10,72,86,589.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (76,9,155,78,588.95);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (77,4,2,99,2554.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (78,6,206,145,4139);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (79,4,63,146,572.96);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (80,1,213,63,1469.96);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (81,6,65,61,1199.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (82,8,213,56,1469.96);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (83,7,18,49,799);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (84,5,87,119,759.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (85,2,230,35,136.69);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (86,4,121,76,721.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (87,10,76,96,629.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (88,2,11,106,2015.11);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (89,8,151,127,281.97);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (90,7,250,125,338.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (91,10,269,104,759.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (92,7,108,104,849.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (93,4,43,113,298.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (94,8,258,73,57.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (95,6,71,135,660);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (96,1,260,34,267.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (97,6,219,132,1299.73);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (98,2,48,44,1218.5);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (99,8,102,101,2042.69);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (100,1,280,70,149.88);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (101,7,102,123,2042.69);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (102,2,95,117,109.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (103,2,258,142,57.98);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (104,6,51,139,2269.99);
Insert into ORDER_ITEMS (ORDER_ID,ITEM_ID,PRODUCT_ID,QUANTITY,UNIT_PRICE) values (105,5,103,77,809.99);


Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (2,8,34);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (3,8,49);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (4,8,49);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (5,8,49);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (6,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (7,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (8,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (9,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (11,8,51);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (12,8,51);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (13,8,51);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (14,8,51);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (15,8,52);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (17,8,54);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (18,8,54);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (19,8,54);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (20,8,5);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (21,8,5);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (22,8,38);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (23,8,39);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (24,8,39);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (25,8,39);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (26,8,39);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (27,8,6);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (29,8,7);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (30,8,7);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (31,8,8);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (32,8,8);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (33,8,42);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (34,8,9);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (35,8,42);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (36,8,43);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (37,8,43);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (38,8,43);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (39,8,43);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (40,8,44);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (41,8,44);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (42,8,46);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (43,8,46);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (44,8,47);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (46,8,7);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (47,8,11);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (50,8,32);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (54,8,44);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (56,6,58);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (57,6,66);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (62,8,47);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (63,8,47);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (67,8,49);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (68,8,49);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (69,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (70,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (71,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (72,8,50);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (73,8,39);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (74,8,39);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (76,8,40);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (78,8,41);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (79,8,41);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (80,8,41);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (84,8,45);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (87,8,47);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (88,8,12);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (89,8,12);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (90,8,13);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (91,8,34);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (94,8,44);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (95,6,60);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (96,6,60);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (98,8,45);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (99,8,47);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (100,8,47);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (101,8,18);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (102,8,49);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (103,8,20);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (104,8,46);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (105,8,20);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (106,8,21);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (107,8,21);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (108,8,21);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (109,8,21);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (110,8,22);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (114,8,23);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (115,8,24);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (116,8,24);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (117,8,24);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (119,8,25);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (120,8,25);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (121,8,25);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (122,8,26);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (123,8,26);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (124,8,26);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (125,8,26);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (126,8,26);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (128,8,27);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (129,8,27);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (130,8,53);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (131,8,53);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (132,8,28);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (133,8,28);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (134,8,54);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (135,8,54);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (136,8,28);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (137,8,29);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (138,8,31);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (139,8,8);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (140,8,9);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (141,8,33);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (142,8,34);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (144,8,10);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (145,8,11);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (146,8,11);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (147,8,11);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (148,8,12);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (149,8,12);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (150,8,15);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (151,8,15);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (152,8,15);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (157,6,42);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (159,8,27);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (160,8,33);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (161,8,48);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (163,8,47);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (166,8,66);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (168,8,56);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (170,6,81);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (172,6,85);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (173,6,94);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (174,8,86);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (175,8,86);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (182,8,128);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (184,8,128);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (185,8,129);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (188,8,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (189,8,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (190,8,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (191,8,138);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (193,8,138);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (195,8,139);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (196,8,139);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (198,8,140);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (199,8,141);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (200,8,141);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (201,8,142);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (203,8,142);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (204,8,142);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (205,8,142);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (207,8,121);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (210,6,146);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (211,6,147);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (212,6,147);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (214,6,148);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (216,7,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (217,6,149);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (218,6,150);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (220,7,167);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (221,7,168);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (222,7,168);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (223,7,168);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (227,6,141);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (228,6,141);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (229,7,136);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (230,7,136);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (231,7,136);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (232,7,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (233,7,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (234,7,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (235,7,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (236,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (237,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (238,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (239,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (241,7,133);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (242,7,133);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (243,7,133);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (245,7,149);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (247,6,148);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (251,6,150);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (254,7,148);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (255,7,148);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (256,7,149);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (257,7,149);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (258,7,149);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (259,7,149);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (260,7,149);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (261,6,163);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (262,6,163);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (263,7,150);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (264,7,150);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (265,6,164);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (269,7,196);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (270,7,196);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (271,6,221);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (272,6,222);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (273,7,170);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (274,6,184);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (276,6,225);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (277,6,225);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (278,6,226);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (279,6,180);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (280,7,167);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (281,7,179);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (283,6,232);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (284,7,294);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (285,7,189);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (286,7,189);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (287,6,212);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (288,6,213);
-- News
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (178,5,137);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (93,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (1,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (187,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (111,6,151);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (171,5,133);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (186,5,133);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (49,5,200);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (55,6,148);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (169,6,150);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (158,5,148);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (215,5,200);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (164,5,200);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (154,7,200);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (52,7,200);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (177,6,163);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (45,6,163);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (155,7,150);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (206,6,300);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (213,7,196);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (65,7,196);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (250,6,222);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (219,7,170);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (48,6,184);
Insert into INVENTORIES (PRODUCT_ID,WAREHOUSE_ID,QUANTITY) values (51,6,225);



Insert into PAYMENT_METHODS (METHOD_ID,METHOD) values (1,'Credit Card');
Insert into PAYMENT_METHODS (METHOD_ID,METHOD) values (2,'Cash');
Insert into PAYMENT_METHODS (METHOD_ID,METHOD) values (3,'Check');
Insert into PAYMENT_METHODS (METHOD_ID,METHOD) values (4,'Bank Transfer');

INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (1,105,3,convert(DATETIME,'2016-12-29 06:01:38',101),31184.615)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (2,105,3,convert(DATETIME,'2017-02-11 10:17:04',101),31184.615)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (3,77,4,convert(DATETIME,'2017-03-21 22:54:56',101),126472.005)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (4,77,2,convert(DATETIME,'2017-03-24 12:05:05',101),126472.005)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (5,60,3,convert(DATETIME,'2017-07-22 11:40:41',101),31584.666666666668)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (6,60,3,convert(DATETIME,'2017-08-08 03:53:16',101),31584.666666666668)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (7,60,3,convert(DATETIME,'2017-09-18 00:54:07',101),31584.666666666668)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (8,16,4,convert(DATETIME,'2016-10-01 11:42:57',101),4859.44)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (9,16,1,convert(DATETIME,'2016-11-19 03:41:02',101),4859.44)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (10,83,4,convert(DATETIME,'2016-12-24 15:16:46',101),19575.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (11,83,4,convert(DATETIME,'2017-01-10 12:37:07',101),19575.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (12,100,1,convert(DATETIME,'2017-02-21 18:47:50',101),5245.8)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (13,100,3,convert(DATETIME,'2017-03-30 10:28:20',101),5245.8)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (14,103,4,convert(DATETIME,'2016-04-05 18:46:55',101),4116.58)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (15,103,1,convert(DATETIME,'2016-04-21 22:14:27',101),4116.58)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (16,93,2,convert(DATETIME,'2017-01-14 08:10:10',101),16892.37)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (17,93,4,convert(DATETIME,'2017-01-18 13:59:39',101),16892.37)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (18,76,2,convert(DATETIME,'2017-04-08 03:48:38',101),45938.1)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (19,18,2,convert(DATETIME,'2016-10-13 19:32:15',101),8821.226666666667)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (20,18,4,convert(DATETIME,'2016-11-03 21:40:47',101),8821.226666666667)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (21,18,4,convert(DATETIME,'2016-11-04 20:07:30',101),8821.226666666667)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (22,78,1,convert(DATETIME,'2016-02-22 12:14:09',101),150038.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (23,78,3,convert(DATETIME,'2016-03-02 06:54:31',101),150038.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (24,78,4,convert(DATETIME,'2016-03-07 13:49:28',101),150038.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (25,78,1,convert(DATETIME,'2016-03-12 18:18:45',101),150038.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (26,61,1,convert(DATETIME,'2016-08-17 13:22:26',101),37732.05)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (27,61,4,convert(DATETIME,'2016-08-20 04:39:12',101),37732.05)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (28,79,4,convert(DATETIME,'2017-01-06 15:01:52',101),83652.16)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (29,62,3,convert(DATETIME,'2015-07-24 03:00:44',101),20907.899999999998)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (30,62,2,convert(DATETIME,'2015-09-02 10:15:40',101),20907.899999999998)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (31,62,3,convert(DATETIME,'2015-09-14 15:28:07',101),20907.899999999998)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (32,84,4,convert(DATETIME,'2015-12-05 14:22:52',101),45219.405)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (33,84,2,convert(DATETIME,'2015-12-28 11:05:36',101),45219.405)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (34,80,2,convert(DATETIME,'2017-01-23 12:57:14',101),92607.48)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (35,2,1,convert(DATETIME,'2015-07-10 17:15:25',101),10184.7575)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (36,2,3,convert(DATETIME,'2015-07-15 08:15:30',101),10184.7575)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (37,2,2,convert(DATETIME,'2015-07-24 20:11:25',101),10184.7575)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (38,2,2,convert(DATETIME,'2015-07-25 10:10:07',101),10184.7575)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (39,63,3,convert(DATETIME,'2016-07-08 06:15:47',101),23969.765)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (40,63,1,convert(DATETIME,'2016-07-23 05:59:19',101),23969.765)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (41,85,4,convert(DATETIME,'2016-12-26 08:30:27',101),1594.7166666666665)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (42,85,3,convert(DATETIME,'2017-01-14 14:20:29',101),1594.7166666666665)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (43,85,3,convert(DATETIME,'2017-02-14 17:11:22',101),1594.7166666666665)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (44,92,4,convert(DATETIME,'2016-01-04 22:59:21',101),22099.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (45,92,2,convert(DATETIME,'2016-01-12 10:00:05',101),22099.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (46,92,1,convert(DATETIME,'2016-01-23 01:07:41',101),22099.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (47,92,3,convert(DATETIME,'2016-01-26 09:53:04',101),22099.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (48,82,2,convert(DATETIME,'2017-02-27 18:16:50',101),41158.88)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (49,82,3,convert(DATETIME,'2017-02-28 02:49:25',101),41158.88)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (50,10,1,convert(DATETIME,'2017-02-05 03:55:20',101),24074.7325)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (51,10,3,convert(DATETIME,'2017-02-08 07:20:30',101),24074.7325)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (52,10,3,convert(DATETIME,'2017-03-04 12:27:27',101),24074.7325)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (53,10,1,convert(DATETIME,'2017-04-23 16:51:05',101),24074.7325)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (54,69,4,convert(DATETIME,'2017-03-19 16:59:32',101),20693.6125)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (55,69,3,convert(DATETIME,'2017-03-19 18:53:08',101),20693.6125)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (56,69,1,convert(DATETIME,'2017-03-19 20:34:15',101),20693.6125)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (57,69,3,convert(DATETIME,'2017-03-19 22:10:45',101),20693.6125)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (58,95,2,convert(DATETIME,'2016-12-16 10:42:14',101),22275.0)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (59,95,1,convert(DATETIME,'2016-12-18 10:02:14',101),22275.0)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (60,95,4,convert(DATETIME,'2016-12-18 18:55:31',101),22275.0)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (61,95,2,convert(DATETIME,'2016-12-18 19:56:34',101),22275.0)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (62,11,4,convert(DATETIME,'2017-01-14 05:49:24',101),7897.1033333333335)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (63,11,3,convert(DATETIME,'2017-02-10 07:23:12',101),7897.1033333333335)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (64,11,2,convert(DATETIME,'2017-02-24 03:33:41',101),7897.1033333333335)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (65,102,2,convert(DATETIME,'2016-12-27 11:18:36',101),3217.2075)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (66,102,2,convert(DATETIME,'2017-01-19 02:01:46',101),3217.2075)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (67,102,3,convert(DATETIME,'2017-02-09 10:19:41',101),3217.2075)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (68,102,1,convert(DATETIME,'2017-03-15 23:53:25',101),3217.2075)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (69,70,3,convert(DATETIME,'2017-02-21 06:44:59',101),301511.66)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (70,70,1,convert(DATETIME,'2017-02-21 20:45:29',101),301511.66)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (71,26,4,convert(DATETIME,'2016-09-01 20:07:12',101),2537.73)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (72,26,3,convert(DATETIME,'2016-09-25 00:30:23',101),2537.73)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (73,26,1,convert(DATETIME,'2016-11-08 05:26:34',101),2537.73)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (74,26,4,convert(DATETIME,'2016-11-09 18:42:52',101),2537.73)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (75,96,1,convert(DATETIME,'2016-10-27 05:31:01',101),4555.83)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (76,96,3,convert(DATETIME,'2016-11-26 00:10:21',101),4555.83)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (77,12,1,convert(DATETIME,'2016-12-14 03:54:30',101),5662.400000000001)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (78,12,3,convert(DATETIME,'2017-01-31 07:10:36',101),5662.400000000001)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (79,12,2,convert(DATETIME,'2017-02-05 09:17:17',101),5662.400000000001)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (80,71,4,convert(DATETIME,'2017-02-27 03:30:45',101),39599.625)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (81,71,2,convert(DATETIME,'2017-04-08 14:51:30',101),39599.625)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (82,43,1,convert(DATETIME,'2015-07-27 15:11:13',101),44892.323333333334)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (83,43,1,convert(DATETIME,'2015-07-30 12:34:03',101),44892.323333333334)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (84,43,2,convert(DATETIME,'2015-08-01 20:35:08',101),44892.323333333334)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (85,72,3,convert(DATETIME,'2016-04-17 11:34:30',101),16081.95)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (86,72,4,convert(DATETIME,'2016-05-02 22:02:34',101),16081.95)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (87,72,2,convert(DATETIME,'2016-05-10 19:37:14',101),16081.95)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (88,72,2,convert(DATETIME,'2016-05-16 11:24:12',101),16081.95)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (89,97,4,convert(DATETIME,'2016-07-12 03:49:21',101),85782.18)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (90,97,4,convert(DATETIME,'2016-07-12 12:19:45',101),85782.18)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (91,13,3,convert(DATETIME,'2016-12-30 09:16:02',101),58615.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (92,13,3,convert(DATETIME,'2017-02-09 16:53:03',101),58615.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (93,13,4,convert(DATETIME,'2017-02-16 11:07:35',101),58615.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (94,13,4,convert(DATETIME,'2017-02-25 08:57:12',101),58615.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (95,73,2,convert(DATETIME,'2016-04-05 07:23:12',101),33772.815)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (96,73,4,convert(DATETIME,'2016-04-21 14:32:39',101),33772.815)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (97,73,2,convert(DATETIME,'2016-05-14 11:04:59',101),33772.815)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (98,73,4,convert(DATETIME,'2016-05-14 13:32:35',101),33772.815)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (99,53,2,convert(DATETIME,'2016-12-02 19:23:29',101),56319.68)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (100,53,3,convert(DATETIME,'2016-12-16 20:15:25',101),56319.68)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (101,53,1,convert(DATETIME,'2016-12-26 08:22:45',101),56319.68)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (102,33,1,convert(DATETIME,'2017-03-10 18:06:53',101),17624.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (103,33,2,convert(DATETIME,'2017-04-24 18:39:15',101),17624.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (104,33,1,convert(DATETIME,'2017-06-01 06:01:03',101),17624.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (105,98,4,convert(DATETIME,'2017-03-18 22:23:34',101),53614.0)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (106,34,3,convert(DATETIME,'2016-08-10 05:33:03',101),13143.793333333333)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (107,34,1,convert(DATETIME,'2016-08-19 09:54:10',101),13143.793333333333)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (108,34,1,convert(DATETIME,'2016-08-29 08:46:48',101),13143.793333333333)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (109,81,1,convert(DATETIME,'2016-12-31 18:01:42',101),18299.8475)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (110,81,2,convert(DATETIME,'2017-01-06 01:44:37',101),18299.8475)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (111,81,3,convert(DATETIME,'2017-01-31 16:31:16',101),18299.8475)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (112,81,3,convert(DATETIME,'2017-02-17 05:28:45',101),18299.8475)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (113,99,4,convert(DATETIME,'2017-02-04 14:08:14',101),206311.69)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (114,74,3,convert(DATETIME,'2017-04-25 13:47:28',101),48495.26)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (115,64,2,convert(DATETIME,'2016-07-04 13:12:59',101),11110.493333333334)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (116,64,2,convert(DATETIME,'2016-08-09 00:49:22',101),11110.493333333334)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (117,64,3,convert(DATETIME,'2016-09-10 18:46:26',101),11110.493333333334)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (118,86,2,convert(DATETIME,'2017-01-25 17:50:19',101),27435.62)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (119,86,3,convert(DATETIME,'2017-01-28 13:59:13',101),27435.62)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (120,5,3,convert(DATETIME,'2017-04-09 09:07:03',101),34610.16)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (121,65,3,convert(DATETIME,'2013-07-11 23:59:43',101),57032.94)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (122,65,3,convert(DATETIME,'2013-07-25 19:11:03',101),57032.94)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (123,65,4,convert(DATETIME,'2013-09-09 01:25:05',101),57032.94)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (124,6,1,convert(DATETIME,'2015-05-28 21:08:27',101),37499.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (125,6,2,convert(DATETIME,'2015-06-17 23:42:37',101),37499.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (126,6,1,convert(DATETIME,'2015-06-20 15:10:41',101),37499.5)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (127,28,3,convert(DATETIME,'2017-08-20 23:36:57',101),15744.225)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (128,28,4,convert(DATETIME,'2017-08-21 20:11:42',101),15744.225)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (129,89,2,convert(DATETIME,'2015-11-27 17:12:02',101),17905.095)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (130,89,3,convert(DATETIME,'2015-12-25 02:29:22',101),17905.095)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (131,66,1,convert(DATETIME,'2016-06-21 23:25:50',101),118709.1)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (132,87,4,convert(DATETIME,'2016-12-04 02:17:38',101),30239.52)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (133,87,4,convert(DATETIME,'2016-12-05 16:39:05',101),30239.52)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (134,4,1,convert(DATETIME,'2015-05-04 08:34:58',101),114549.21)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (135,90,2,convert(DATETIME,'2015-12-11 18:48:25',101),42373.75)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (136,67,4,convert(DATETIME,'2016-06-14 12:09:25',101),11099.85)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (137,67,1,convert(DATETIME,'2016-06-14 23:37:43',101),11099.85)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (138,67,2,convert(DATETIME,'2016-06-14 23:59:34',101),11099.85)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (139,68,1,convert(DATETIME,'2016-06-25 04:35:59',101),36959.79)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (140,68,3,convert(DATETIME,'2016-08-05 05:49:32',101),36959.79)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (141,68,4,convert(DATETIME,'2016-08-20 14:21:15',101),36959.79)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (142,68,4,convert(DATETIME,'2016-08-26 23:35:11',101),36959.79)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (143,91,3,convert(DATETIME,'2016-12-11 01:35:40',101),19759.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (144,91,3,convert(DATETIME,'2017-01-03 07:00:50',101),19759.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (145,91,4,convert(DATETIME,'2017-01-24 00:57:22',101),19759.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (146,91,1,convert(DATETIME,'2017-01-26 04:49:12',101),19759.74)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (147,9,2,convert(DATETIME,'2017-02-15 17:16:33',101),93135.68)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (148,9,1,convert(DATETIME,'2017-03-22 16:33:52',101),93135.68)
INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES (149,9,4,convert(DATETIME,'2017-04-20 15:37:12',101),93135.68)

ALTER TABLE countries CHECK CONSTRAINT fk_countries_regions;
ALTER TABLE locations CHECK CONSTRAINT fk_locations_countries;
ALTER TABLE warehouses CHECK CONSTRAINT fk_warehouses_locations;
ALTER TABLE employees CHECK CONSTRAINT fk_employees_manager;
ALTER TABLE products CHECK CONSTRAINT fk_products_categories;
ALTER TABLE contacts CHECK CONSTRAINT fk_contacts_customers;
ALTER TABLE orders CHECK CONSTRAINT fk_orders_customers;
ALTER TABLE orders CHECK CONSTRAINT fk_orders_employees;
ALTER TABLE order_items CHECK CONSTRAINT fk_order_items_products;
ALTER TABLE order_items CHECK CONSTRAINT fk_order_items_orders;
ALTER TABLE inventories CHECK CONSTRAINT fk_inventories_products;
ALTER TABLE inventories CHECK CONSTRAINT fk_inventories_warehouses;
ALTER TABLE payments CHECK CONSTRAINT fk_payments_orders;
ALTER TABLE payments CHECK CONSTRAINT fk_payments_payment_methods;