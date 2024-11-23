use aspiresys;

-- 1. Write a query to display all rows and columns from the employees table.
select * from employee;

-- 2. Retrieve only the name and salary of all employees from the employees table
select employee_name, salary from employee;

-- 3. Write a query to find all employees whose salary is greater than 50,000.
update employee set salary=76000 where employee_id=101;
select employee_name from employee where salary >50000;

-- 4. List all employees who joined the company in the year 2020.
alter table employee add column date_of_joining date;
update employee set date_of_joining='2021-08-12' where employee_id=104;
update employee set date_of_joining='2020-03-22' where employee_id=106;
update employee set date_of_joining='2020-04-25' where employee_id=111;
update employee set date_of_joining='2022-07-02' where employee_id=101;

select employee_name from employee where YEAR(date_of_joining)=2020;

-- 5. Retrieve the details of employees whose names start with the letter 'A'.
select * from employee where employee_name like 'A%';

