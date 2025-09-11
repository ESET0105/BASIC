create table orders(
user_id int primary key,
product_id int,
order_no int);

select * from orders
select * from users
select * from book

insert into orders values 
(101,20,22),(102,40,25),(102,50,26)
;

create table users(
user_id int primary key,
email varchar(50),
names varchar(50));




insert into users values 
(101,'ramu@gmail','ramu'),
(102,'kanu@gamil','kanu'),(103,'heera@gmail','heera'),(104,'jetha@gmail','jetha'),(105,'iyar@gmail','iyar'),(106,'sodhi@gmail','sodhi');




insert into book values 
(20,'percy',350),
(30,'narniya',400),(50,'harry_potter',1700),(40,'shadow&bone',1100),(80,'maze_runner',1000),(10,'dark_knight',1200);




