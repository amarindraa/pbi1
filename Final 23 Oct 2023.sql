CREATE DATABASE "KALBE"
	WITH 
	OWNER = postgres
	ENCODING = 'UTF8'
	CONNECTION LIMIT = -1
	is_template = False;

/c KALBE;

create table inventory (
	item_code serial primary key,
	item_name varchar(50),
	item_price int,
	item_total int
);

create table customer_orders (
	order_no serial primary key,
	purchase_amount int,
	order_date date,
	customer_id int,
	salesman_id int
);

create table karyawan (
	karyawan_id serial primary key,
	first_name varchar(50),
	last_name varchar (50),
	age int,
	sex varchar(50),
	income int
);


INSERT INTO inventory (item_code, item_name, item_price, item_total)
VALUES('2341','Promag Tablet', 3000, 100),
VALUES('2342','Hydro Coco 250ML', 7000, 20),
VALUES('2343','Nutrieve Benecol 100ML', 20000, 30),
VALUES('2344','Blackmores Vit C 500Mg', 95000, 45),
VALUES('2345', 'Entrasol Gold 370G', 90000, 120);

select * from inventory;

SELECT *
FROM inventory
ORDER BY item_total DESC
LIMIT 1;

UPDATE inventory
SET item_price=99000
WHERE item_name = 'Entrasol Gold 370G';

-- MENCOBA DUA PRIMARY KEY
INSERT INTO inventory(item_code, item_name, item_price, item_total)
VALUES ('2343', 'Slim&Fit', 10000, 5);


SELECT *
FROM inventory
ORDER BY item_total
LIMIT 1;

DELETE FROM inventory
WHERE item_name = 'Hydro Coco 250ML';


SELECT *
FROM customer_orders
WHERE (purchase_amount < 100)	  -- less than 100
OR (order_date >= '2022-08-25')   -- greater or than 25 Aug 2022
	AND customer_id > 2021;       -- customer id is above 2001

ALTER TABLE customer_orders
ADD CONSTRAINT fk_salesman FOREIGN KEY (salesman_id) REFERENCES karyawan(karyawan_id);

