select * from employees;

select * from some_emps;
delete from some_emps;

insert all
when 5 = 5 then
into some_emps (name, salary) values (first_name, salary)
select first_name, last_name, salary, department_id from employees where length(first_name) > 5;

delete from some_emps where salary = 24000;
delete from some_emps where length(name) > 6;




select * from employees;

create table new_emps(first_name VARCHAR2(20), last_name VARCHAR2(20), salary INTEGER);

insert into new_emps
(select first_name, last_name, salary from employees);

select * from new_emps;
delete from new_emps where last_name = 'Statham';

commit;