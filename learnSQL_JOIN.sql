select * from employees ;

select * from departments;


select first_name, last_name, salary, department_name, manager_id from employees natural join departments;

select first_name, last_name, salary, department_name, e.manager_id, department_id 
from employees e join departments d using (department_id);


select * from employees;
select * from job_history;

select first_name, last_name, start_date, end_date, jh.job_id
from employees join job_history jh using (employee_id, department_id);


select * from regions;
select * from countries;

select * from regions join countries using (region_id);


select first_name, last_name, start_date, end_date, jh.job_id
from employees join job_history jh on (employees.employee_id = jh.employee_id);

select first_name, last_name, start_date, end_date, jh.job_id
from employees e join job_history jh on 
(e.employee_id = jh.employee_id and e.department_id = jh.department_id);


select * from regions;
select * from departments;

select * from departments join regions on (region_id*10 = department_id);


select first_name, department_name from employees join departments
on (employees.employee_id = departments.manager_id);




select * from regions;
select * from locations;
select * from countries;
select * from locations natural join countries natural join regions;

select * from locations join countries using (country_id)
join regions using (region_id);







