use aspiresys;

select * from employee;

-- view concept to display details of employee from chennai and TN team
create view tn_emp as select * from employee where job_location = 'chennai' and team = 'TN';
select * from tn_emp;

