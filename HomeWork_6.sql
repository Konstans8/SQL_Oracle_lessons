select department_id,
        min(salary) as min_sal,
        max(salary) as max_sal,
        min(hire_date) as min_date,
        max(hire_date) as max_date,
        count(*) as count
from employees
group by department_id
order by count(*) desc;


select substr(first_name, 1, 1) as first_char, count(*)
from employees
group by substr(first_name, 1, 1)
having count(*) > 1
order by 2 desc;


select department_id, salary, count(*) from employees group by department_id, salary;


select to_char(hire_date, 'Day') as day, count(*) from employees group by to_char(hire_date, 'Day');


select department_id from employees group by department_id having count(*) > 30 and sum (salary) > 300000;


select region_id
from countries
group by region_id
having sum(length(country_name)) > 50;


select job_id, round(avg(salary)) as avg_salary from employees group by job_id;


select department_id
from employees
group by department_id
having count(distinct job_id) > 1;


select department_id, job_id, max(salary), min(salary)
from employees
group by department_id, job_id
having avg(salary) > 10000;


select manager_id
from employees
where commission_pct is null
group by manager_id
having avg(salary) between 6000 and 9000;


select round(max(avg(salary)), -3)
from employees
group by department_id;