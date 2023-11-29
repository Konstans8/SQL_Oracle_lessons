select first_name, salary*1.5/4, salary from employees;

select * from job_history;

select start_date, end_date, (end_date-start_date)+1 from job_history;

select start_date, start_date+7 from job_history;

select first_name || last_name from employees;

select 'My name is '||first_name||' and my surname is '||last_name as name
from employees;
