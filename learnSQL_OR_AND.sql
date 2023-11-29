select * from employees;
select * from employees where first_name like '__n%' and commission_pct is null;
select * from employees where first_name like 'A%' and job_id = 'SA_REP';
select * from employees 
where first_name like '__n%' and commission_pct is null
or
first_name like 'A%' and job_id = 'SA_REP';

select first_name, last_name, salary, department_id, job_id, commission_pct 
from employees
where last_name like '%i%' and salary>employee_id*50
or
job_id in ('IT_PROG', 'PU_CLERK') and commission_pct is null;


