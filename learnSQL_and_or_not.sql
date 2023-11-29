select * from employees
where first_name like 'D%' and salary>10000;

select * from employees
where first_name like 'D%' or salary>10000;

select * from employees where not (job_id = 'SA_MAN');

select * from employees WHERE last_name not like 'K%';

select * from employees where commission_pct is not null and last_name not like '%n';

