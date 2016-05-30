-- Creating the new database
create database BookKing;
--to create tables in it, we need to 'use' it ;)
use BookKing;
go


--creation of tables as per the drawn schema
CREATE TABLE author(
auth_name varchar(30) primary key,
auth_address varchar(40));


CREATE TABLE publisher(
pub_name varchar(30) primary key,
pub_address varchar(50), 
pub_phone numeric);

CREATE TABLE customer(
cust_name varchar(30),
cust_email varchar(50) primary key,
cust_address varchar(50),
cust_phone numeric);

CREATE TABLE warehouse(
code varchar(30) primary key,
ware_phone numeric,
ware_address varchar(50));

CREATE TABLE orders(
order_id varchar(30) not null,
isbn numeric unique,
cust_email varchar(50) not null);

CREATE TABLE book_Type(
price numeric,
book_id numeric primary key,
title varchar(30),
year1 numeric(4),
pub_name varchar(30),
auth_name varchar(30));

CREATE TABLE book(
isbn numeric primary key,
book_id numeric not null,
code varchar(30) not null);

ALTER TABLE book
add constraint fk_book_type
foreign key (book_id) references book_Type(book_id) on update cascade;

alter table Book
add constraint FK_Book_Warehouse
foreign key(code) references warehouse(code) on update cascade;

CREATE TABLE belongs_To(
isbn numeric,
categ_name varchar(30));

ALTER TABLE belongs_To
add constraint fk_book_isbn
foreign key (isbn) references book(isbn) on update cascade;


--now defining primary keys for many-many relationship's tables

alter table orders
add constraint pk_order
primary key(order_id);


--defining foreign key for the one-many relationships
alter table book_Type
add constraint fk_author
foreign key (auth_name) references author(auth_name) on update cascade;

alter table book_Type
add constraint fk_publisher
foreign key (pub_name) references publisher(pub_name) on update cascade;

