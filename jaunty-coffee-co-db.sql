CREATE TABLE COFFEE_SHOP (
  shop_id int PRIMARY KEY,
  shop_name varchar(50),
  city varchar(50),
  state char(2)
);

INSERT INTO COFFEE_SHOP
  (shop_id, shop_name, city, state)
VALUES
  (1, 'Cup of Joe', 'Park City', 'UT'),
  (2, 'Stardoes', 'Salt Lake City', 'UT'),
  (3, 'Caffeine Beans', 'Atlanta', 'GA'),
  (4, 'Sublime Coffee Co', 'Miami', 'FL'),
  (5, 'Coffee & Co', 'Denver', 'CO')
;

CREATE TABLE EMPLOYEE (
  employee_id int PRIMARY KEY,
  first_name varchar(30),
  last_name varchar(30),
  hire_date date,
  job_title varchar(30),
  shop_id int,
  FOREIGN KEY (shop_id) REFERENCES COFFEE_SHOP(shop_id)
);

INSERT INTO EMPLOYEE 
  (employee_id, first_name, last_name, hire_date, job_title, shop_id)
VALUES
  (999, 'Sam', 'Black', '2010-1-1 12:00:00', 'Barista', 1),
  (555, 'Peter', 'Smith', '2015-1-6 12:02:00', 'Cashier', 2),
  (111, 'Samantha', 'Brown', '2018-5-8 12:30:00', 'Barista', 3),
  (222, 'Carl', 'Daniels', '2020-9-10 12:55:00', 'Cashier', 4),
  (333, 'Beavis', 'Darlington', '2021-11-11 12:12:00', 'Barista', 5)
;

CREATE TABLE COFFEE (
  coffee_id int PRIMARY KEY,
  shop_id int,
  supplier_id int,
  coffee_name varchar(30),
  price_per_pound numeric(5,2),
  FOREIGN KEY (supplier_id) REFERENCES SUPPLIER(supplier_id),
  FOREIGN KEY (shop_id) REFERENCES COFFEE_SHOP(shop_id)
);

INSERT INTO COFFEE
  (coffee_id, shop_id, supplier_id, coffee_name, price_per_pound)
VALUES
  (05, 1, 5, 'sumatra', 4.55),
  (04, 2, 4, 'dark', 1.50),
  (03, 3, 3, 'blonde', 3.10),
  (02, 4, 2, 'verde', 2.50),
  (01, 5, 1, 'blue mountain', 7.75)
;

CREATE TABLE SUPPLIER (
  supplier_id int PRIMARY KEY,
  company_name varchar(30),
  country varchar(30),
  sales_contact_name varchar(60),
  email varchar(50)
);

INSERT INTO SUPPLIER
  (supplier_id, company_name, country, sales_contact_name, email)
VALUES
  (1, 'Global Beans', 'USA', 'Richard Richley', 'rrichley@gbeans.com'),
  (2, 'Jamaica Coffee Co', 'Jamaica', 'Bob Buxton', 'bobbux@jccompany.com'),
  (3, 'Coffee Exchange LLC', 'USA', 'Brittney Smith', 'bsmith@coffeex.com'),
  (4, 'Coffee Source', 'Costa Rica', 'Jade Green', 'jgreen@coffeesrc.com'),
  (5, 'Bean Shippers', 'Ecuador', 'Robert Stanley', 'roberts@beanshippers.com')
;
