select * from employees;
select * from countries;

insert into countries values ('SW', 'Sweden', 1);
insert into countries values ('GR', 'Greece');

insert into countries (country_id, country_name, region_id)
values ('NR', 'Norway', 1);


insert into employees (employee_id, last_name, email, hire_date, job_id)
values (207, 'Statham', 'JSTATHAM', '18-SEP-2023', 'IT_PROG');

insert into employees (employee_id, last_name, email, hire_date, job_id)
values (208, initcap('Statham'), upper('jstatham1'), to_date('18-SEP-2023', 'DD-MON-YYYY'), upper('IT_PROG'));


create table new_empl
(
emp_id integer,
name varchar2(20),
start_date date,
job varchar2(10)
);

insert into new_empl (emp_id, name, start_date)
(select employee_id, first_name, hire_date from employees where employee_id > 200);

select * from new_empl;

select * from employees;



create table emps_with_high_salary(name varchar2(20), salary integer);

create table emps_with_dept_100(name varchar2(20), salary integer);

create table some_emps(name varchar2(20), salary integer);



insert all
when department_id = 100 then
into emps_with_dept_100 values (first_name, salary)
when salary > 15000 then
into emps_with_high_salary (name) values (last_name)
when 5 = 5 then
into some_emps (name, salary) values (first_name, salary)
select first_name, last_name, salary, department_id from employees where length(first_name) > 5;

select * from emps_with_dept_100;
select * from emps_with_high_salary;
select * from some_emps;

