-- Create TABLE commands

-- Creating Category TABLE

create TABLE if not exists category
(
category_id varchar(10) PRIMARY key,
category_name VARCHAR(20)
)

SELECT * from category
-- Data imported successfully


-- Creating stores TABLE

CREATE TABLE if not exists stores
(
store_id varchar(5) PRIMARY key,
store_name varchar(30),
city varchar(30),
country varchar(30)
) 

SELECT * from stores
-- Data imported succuessfully

-- creating Table Products

create TABLE if not exists products
(
product_id varchar(10) primary key,
product_name varchar(40),
category_id varchar(10),
launch_date date,
price float,
CONSTRAINT fk_category FOREIGN key(category_id) REFERENCES category(category_id)
)
SELECT * FROM products
-- Data imported succuessfully

-- creating Table sales

CREATE table if not exists sales
(
sale_id varchar(15) PRIMARY key,
sale_date date,
store_id VARCHAR(10),  	--fk
product_id varchar(10),	--fk 
quantity int,
constraint fk_store FOREIGN key (Store_id) REFERENCES stores(store_id),
constraint fk_product FOREIGN key (product_id) REFERENCES products(product_id)
)

SELECT * from sales 
-- Data imported succuessfully


-- creating Table warranty

CREATE table if not exists warranty
(
claim_id varchar(10) PRIMARY key,
claim_date date,
sale_id VARCHAR (15),
repair_status VARCHAR(15),
constraint fk_sale FOREIGN KEY(sale_id) REFERENCES sales(sale_id)
)

SELECT * from warranty
-- Data imported succuessfully









