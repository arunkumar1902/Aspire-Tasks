use aspiresys;
select * from department;
select * from employee;

alter table department add column count_of_employee int default 0;

-- d,e where alias 
update department d join (select dept_id, count(*) as emp_count from employee group by dept_id) e
on e.dept_id = d.department_id set d.count_of_employee = e.emp_count ;

/*   1)Create a Stored Procedure that takes employee id as IN parameter and updated 
	 salary as OUT parameter. Then update the salary of the employee */
     

/*   4)Create a trigger that fire After insertion in the employee table by 
     updating the count in the department     */
delimiter $$
create trigger update_count 
after insert on employee for each row
begin
update department set count_of_employee=count_of_employee+1 where department_id=new.dept_id;
end;
delimiter;

insert into employee
(employee_id,employee_name,age,salary,experience_years,job_location,team,date_of_joining,dept_id)
values (102,'Bhadri',25,95000,4,'chennai','TN','2019-11-20',1002);

-- after delete count decrease
delimiter $$
create trigger update_count_delete
after delete on employee for each row
begin
update department set count_of_employee=count_of_employee-1 where department_id=old.dept_id;
end;
delimiter;

delete from employee where employee_id=102;

