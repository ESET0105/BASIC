-- window functions -- 
-- 3 and 4 are same - 
-- Row_number()-- 1,2,3,4     , rank() 1,2,3,3 , 5 , dense_rank() 1,2,3,3,4 , partition_by --

select * ,
ROW_NUMBER() over(partition by Dept_id order by Salary desc) as rowNO,
Rank() over(partition by Dept_id order by Salary desc ) as rankNO,
dense_rank() over(partition by Dept_id order by Salary desc) as denserankNO
from employee;

UPDATE employee
SET Salary = 63000
WHERE Emp_id=110;


