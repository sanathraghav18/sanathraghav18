show databases;

CREATE TABLE cust (email_id varchar(25) not null, Name varchar(25), cust_id char(10) not null, contact varchar(15) unique, PRIMARY KEY (cust_id));

Describe cust;

DESCRIBE customer_DBK;

drop table customer;

CREATE TABLE product( product_id int not null, prodcut_Name varchar(25), price float(5), primary key(product_id));

DESCRIBE product;


CREATE TABLE Customer_address( Zip_code int not null, street_address varchar(25), city varchar(25), state varchar(25), primary key(Zip_code));

show tables;

DESCRIBE cust;

rename table cust to customer;

show tables;

ALTER TABLE customer_address ADD country varchar(25);

describe customer_address;

show tables;

drop table customer_dbk;

show tables;

rename table customer_address to address;

show tables;

describe address;

INSERT INTO address (Zip_code, street_address, city, state, country)
values ('500013', 'baghamberpet', 'hyderabad', 'telangana', 'india');

describe address;

select * from address;

select * from address;

INSERT INTO address (Zip_code, street_address, city, state, country)
values ('500034', 'varasiguda', 'hyderabad', 'telangana', 'india');

INSERT INTO address (Zip_code, street_address, city, state, country)
values ('500056', 'jubilee_hills', 'hyderabad', 'telangana', 'india');

select * from address;

describe customer;

INSERT INTO customer (email_id, name, cust_id, contact)
values ('sanathraghav18@gmail.com', 'sanath_raghav', '00023', '9791900937');

INSERT INTO customer (email_id, name, cust_id, contact)
values ('sanathraghav18@gmail.com', 'sanath_raghav', '00023', '9791900937');

show tables;

ALTER TABLE customer
MODIFY COLUMN email_id varchar(25);

describe customer;

INSERT INTO customer (email_id, name, cust_id, contact)
values ('krishbheemsena@gmail.com', 'raghava', '00024', '6305428078');

INSERT INTO customer (email_id, name, cust_id, contact)
values ('sachin52@gmail.com', 'sachin', '00025', '6304532002');

select * from customer;

describe product;

ALTER TABLE product drop column prodcut_Name;

describe product;

ALTER TABLE product add column product_Name varchar(25);

describe product;


INSERT INTO product (product_id, price, product_Name)
values ('678', '578.78', 'vanilla_cookies');

INSERT INTO product (product_id, price, product_Name)
values ('679', '670', 'banana_cake');

INSERT INTO product (product_id, price, product_Name)
values ('680', '1000', 'Imperial_blue');

show tables;

drop table cust;

CREATE TABLE cust AS SELECT * FROM customer;

select * from cust;



 
















