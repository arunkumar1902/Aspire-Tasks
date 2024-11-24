use aspiresys;

select * from employee;

-- write a procedure that shows details of employee joined in a specific year

delimiter &&
create procedure joined_year(year_of_joining int)
begin
select * from employee where year(date_of_joining)=year_of_joining;
end ;
delimiter;

call joined_year(2020);

