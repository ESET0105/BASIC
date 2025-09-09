
-- create table customer(
-- customer_id int primary key,
-- customer_name varchar(50),
-- customer_Address varchar(100),
-- region varchar(10)) -- 


insert into customer values 
(101,'Milan','Udaipur,Rajasthan','north')
,(102,'roat','Dungarpur,Rajasthan','south')
,(103,'mahir','Jaipur,Rajasthan','east')
,(104,'aumkar','roorkee,UK','west');


select AVG(Energyconsumed) as avg_energy_consumed from smartmeterreadings; -- comes out to be 31--

select max(Energyconsumed) as max_energy_consumed from smartmeterreadings; -- comes out to be 52-- 