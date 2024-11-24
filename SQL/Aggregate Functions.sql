use aspiresys;

select * from employee;

-- 1. Write a query to calculate the average salary of all employees.
select avg(salary) from employee;

-- 2. Find the total number of employees in the company.
select count(employee_name) from employee;

-- 3. Write a query to find the highest salary in the employees table.
select max(salary) from employee;

-- 4. Calculate the total salary paid by the company for all employees.
select sum(salary) from employee;

-- 5. Find the count of employees in each department.
select dept_id, count(*) as count_of_employee from employee group by dept_id;