use aspiresys;

select * from employee;

alter table employee add column dept_id numeric;

create table department(
department_id numeric primary key,
department_name varchar(20) );

insert into department (department_id, department_name)
value(1001,'Insurance'),(1002,'Testing'),(1003,'D&A');

alter table employee add constraint fk_department 
foreign key (dept_id) references department(department_id);

update employee set dept_id='1001' where employee_id = 104;
update employee set dept_id='1002' where employee_id = 106;
update employee set dept_id='1003' where employee_id = 111;
update employee set dept_id='1001' where employee_id = 101;


-- 1. Write a query to retrieve employee names along with their department names 
-- (using employees and departments tables)

select employee.employee_name, department.department_name from employee
join department on employee.dept_id = department.department_id;

