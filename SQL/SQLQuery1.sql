create database Society;

use Society

create table gokuldham (Flat_no int,names varchar(30), Phone_no varchar(10))

select * from gokuldham

insert into gokuldham (Flat_no,names,Phone_no) values (01,'gada family','9087654334')
insert into gokuldham values (02,'iyar family','6789786563'),(03,'sodhi family','8976564789')
insert into gokuldham values (03,'hathi family','6789746563'),(04,'sodhi family','8976564789')
update gokuldham set names='mehta family' where Flat_no=2;

delete from gokuldham where Flat_no=3;

create table employee (emp_ID int , names varchar(30),department varchar(30),salary int);

insert into employee values 
(01,'mahir','AI/ML',95000)
,(02,'milan','robotics',94000)
,(03,'roat','AI/ML',98000)
,(04,'kaif','genAI',92000)
,(05,'karanjit','webdev',80000);

select * from employee
where salary>=92000;








