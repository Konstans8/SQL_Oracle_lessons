select * from employees;

select first_name, last_name, salary from employees where salary != 17000;

select * from employees where hire_date='05.09.21';

select * from employees where employee_id = manager_id+1000/10+1;

select * from job_history where job_id='ST_CLERK';

select * from employees
where 'Dr '||first_name||' '||last_name = 'Dr David Austin';

select first_name, last_name, salary from employees where salary >= 9000;

select first_name, last_name, salary from employees
where salary between 4000 and 10000;

select * from job_history where start_date between '01.01.04' and '12.12.06';

select first_name, last_name, salary from employees where salary >= 4000 and salary <= 10000;

select * from departments where location_id in (1700, 2400, 1500);
select * from departments where location_id=1500 or location_id=1700 or location_id=2400;

select * from employees where commission_pct is null;


select * from employees;

select * from employees where first_name = 'Steven';
select * from employees where first_name like 'A%r';
select * from employees where first_name like 'D_n';
select * from employees where first_name like '__n%';
select * from employees where job_id like 'ST\_%' escape '\';

