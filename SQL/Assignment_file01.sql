create database smart_meter;

use smart_meter

create table customer(
customer_id int primary key,
customer_name varchar(50),
customer_Address varchar(100),
region varchar(10))


create table smartmeterreadings(
meter_id int primary key,
customer_id int,
location varchar(20),
installedDate date,
Readingdatetime datetime,
Energyconsumed float)







-- task01 -- 
-- fetch smart meater readings where energy consumed between 10-50 kw , reading date time between 2024-01-01 and 2024-12-31 , exclude meters installed after 2024-06-30--

insert into smartmeterreadings values 
(05,105,'rooftop','2024-07-24','2024-08-25 09:30:00',46)
,(06,106,'basement','2023-07-24','2023-08-25 04:30:00',70)
,(07,107,'front wall','2023-08-24','2024-05-25 12:30:00',50)
,(08,108,'basement','2023-09-24','2025-08-25 07:30:00',54);

-- query to fetch reading where energyreading between 10 and 50--

select * from smartmeterreadings
where Energyconsumed between 10 and 50;


-- query to fetch reading where readingdatetime is between '2024-01-01' and '2024-12-31'--
select * from smartmeterreadings
where Readingdatetime between '2024-01-01' and '2024-12-31';


-- query to fetch reading where exclude meter installed after '2024-06-30'--
select * from smartmeterreadings
where installedDate < '2024-06-30';

-- this is a query which follow every condition at a given time--
select meter_id,Readingdatetime,Energyconsumed from smartmeterreadings
where Energyconsumed between 10 and 50
and Readingdatetime between '2024-01-01' and '2024-12-31'
and installedDate < '2024-06-30';

