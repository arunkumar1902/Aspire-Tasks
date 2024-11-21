create database aspiresys;

-- @block
use aspiresys;

-- table creation
create table employee(
employee_id int,
employee_name varchar(20),
age int,
salary numeric,
experience_years numeric,
job_location varchar(20)
);

-- value insertion in table
insert into employee (employee_id, employee_name, age, salary, experience_years, job_location)
value
(104,'Sankar',27,35000,06,'singapore'),
(106,'Balaji',29,42000,08,'coimbatore'),
(111,'vicky',30,40000,09,'salem');

-- insert new employee 
insert into employee (employee_id, employee_name, age, salary, experience_years, job_location)
value
(101,'Arun',23,25000,02,'chennai');

-- creating new column
alter table employee add column team varchar(10);

-- delete column
alter table employee drop column team;

-- update value in a column
update employee set team = 'TN' where employee_id = 101;
update employee set team = 'SL' where employee_id = 104;
update employee set team = 'SL' where employee_id = 111;
update employee set team = 'TN' where employee_id = 106;


select *from employee;