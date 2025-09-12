-- union (no duplicates) and union all (does not remove duplicates) -- 

select First_name as names from Employee
union all
select names from users

select * from Employee


select upper(First_name) as Upper_names from Employee  -- trail spaces doesnt count in len() function -- 

select (Last_name + ' ' + First_name) as full_name ,len(Last_name + ' ' + First_name) as name_length ,First_name, Last_name as name_size from Employee;

--- SUBSTRINGS --- 

select SUBSTRING(First_name , 3,4) as part_of_name , First_name from Employee;

select REVERSE(First_name) , First_name   from Employee

-- replace --- 
select * from book

select replace('I like coffee', 'coffee','tea') as coffee;
select replace(title , 'percy','jackson') as new_title , * from book


-- concat --- 
select CONCAT(First_name,'  ',Last_name , '  dept ',Dept_id) as full_name , *
from Employee

-- changing datatype temperorily -- 
select cast(Emp_id as float) as emp_id_float from Employee

select GETDATE() as today_date

select convert(varchar(10), getdate() , 103) as date_ddmmyyyy





