select first_name, last_name, salary
from employees where salary > (select avg(salary) from employees);

select * from jobs;

select 
(select min(min_salary) from jobs) min_zp,
(select max(length(first_name)) from employees) very_long_name 
from dual;


select first_name, last_name from employees
where employee_id in (select manager_id from employees);


select department_name, min(salary), max(salary) from
(select salary, department_name from employees e join departments d on (e.department_id = d.department_id))
group by department_name;

select department_name, min(salary), max(salary) from
(select salary, department_name from employees e join departments d on (e.department_id = d.department_id))
group by department_name having max(salary) > (select 2*5000 from dual)
and min(salary) < (select salary from employees where employee_id = 113);



