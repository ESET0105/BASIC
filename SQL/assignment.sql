
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

insert into customer values 
(105,'nishtha','Udaipur,Rajasthan','north')
,(106,'kaushal','Dungarpur,Rajasthan','south')
,(107,'aryan','Jaipur,Rajasthan','east')
,(108,'kp','roorkee,UK','west');


select AVG(Energyconsumed) as avg_energy_consumed from smartmeterreadings; -- comes out to be 31--

select max(Energyconsumed) as max_energy_consumed from smartmeterreadings; -- comes out to be 52-- 

-- Advance SQl  - count , groupby , having -- 
select * from smartmeterreadings

select count(*) as countno , location from smartmeterreadings
group by location 
having count(*) > 2;


-- highest energy consumed - top 5 -- 

select top(5) * from smartmeterreadings
order by Energyconsumed desc;

-- offset skips 1st row -- 
select * from smartmeterreadings order by Energyconsumed desc offset 1 row fetch next 5 rows only;


-- checking for joined tables-- 
select c.customer_name, s.Energyconsumed from customer c join smartmeterreadings s
on c.customer_id = s.customer_id
where s.Energyconsumed > 25;
