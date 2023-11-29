select * from regions;

select first_name, department_id, salary, last_name from employees;

select employee_id, email, hire_date-7 as one_week_before_hire_date 
from employees;

select first_name || '(' || job_id || ')' as our_employees from employees;

select DISTINCT first_name from employees;

select * from jobs;

select job_title, 'min = '||min_salary||', max = '||max_salary as info, 
max_salary as max, max_salary*2-2000 as new_salary from jobs;

select q'<Peter's dog id very clever>' from dual;

select 'Peter''s dog is very clever' from dual;

select 100*365.25*24*60 as minutes_in_age from dual;