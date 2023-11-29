select first_name, last_name, salary
from employees where salary < (select max(salary)/5 from employees);

select first_name, last_name, salary
from employees where salary > (select avg(salary) from employees);

select first_name, last_name, salary from employees 
where salary >= (select salary from employees where employee_id = 180);


select job_title from jobs j join employees e on (j.job_id = e.job_id)
group by job_title
having avg(salary) = 
(select max(avg(salary)) from employees group by job_id);