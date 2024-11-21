use aspiresys;

select * from employee;

-- stored procedure
delimiter $$  -- delimiter command used for complex block of codes such as procedures,fn,triggers
create procedure emp_salary(in emp_name varchar(100))
begin
select salary from employee where emp_name = employee_name ;
end $$ 
delimiter ;
call emp_salary('Sankar');

drop procedure emp_salary; -- to remove procedure


-- normal query 
select salary from employee where employee_name = 'Arun';
