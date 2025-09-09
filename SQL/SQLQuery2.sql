create table users(
user__id int primary key,
email varchar(50),
names varchar(100))

create table book(
product__id int primary key,
title varchar(50),
prices int)

create table orders(
user__id int primary key,
product_id int,
order_no int)

insert into book values 
(01,'mahir','AI/ML',95000)
,(02,'milan','robotics',94000)
,(03,'roat','AI/ML',98000)
,(04,'kaif','genAI',92000)
,(05,'karanjit','webdev',80000);