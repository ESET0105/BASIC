-- stored procedure -- 
-- call it to complete execution in one go -- 

--create procedure employeedetails()
--begin
-- select * from employee;
--end;          // syntax to form procedure

-- drop procedure employeedetails() 

-- using try catch for error handelling --- 

create procedure retrive_data as
begin
	select * from Employee

end 

exec retrive_data

drop procedure check_salary


create procedure retrive_data
@Emp_id int
as 
begin	
	select * from Employee where Emp_id=102
end


exec retrive_data @Emp_id=102



-- // check salary procedure

create procedure check_salary
	@Emp_id int
as
begin
	declare @salary int;

	select @salary = salary
	from Employee
	where Emp_id = @Emp_id;

	if @salary >= 100000
		print 'high salary employee';
	else if @salary >= 60000
		print 'medium salary employee';
	else
		print 'low salary employee';

end;

exec check_salary @Emp_id = 103


-- triggers  - similar to procedure , to record operations --- 
-- automatically trigger , no need to execute saparetly -- 
-- predefined tables for triggers - inserted , deleted , updated ----

create trigger update_salary
on Employee
after insert
as
	begin
	print 'new record of an employee is added .'
	end;


insert into Employee values (115,'Milan','Roat','2003-02-18','M',960000,4)



CREATE TABLE SalaryAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    emp_id INT,
    OldSalary INT,
    NewSalary INT,
    ChangeDate DATETIME DEFAULT GETDATE()
);

select * from SalaryAudit

insert into SalaryAudit values (34, 101 , 30000 , 40000 )
update SalaryAudit set NewSalary = 50000 where AuditID=1



CREATE TRIGGER trg_AuditSalaryChange
ON Employee
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Salary) -- Run only if Salary column is updated
    BEGIN
        INSERT INTO SalaryAudit (emp_id, OldSalary, NewSalary)
        SELECT 
            d.emp_id,
            d.Salary AS OldSalary,
            i.Salary AS NewSalary
        FROM deleted d
        INNER JOIN inserted i ON d.emp_id = i.emp_id;
    END
END;
 
 select * from deleted

 
update employee set salary=1000 where emp_id=4;
 
select * from SalaryAudit