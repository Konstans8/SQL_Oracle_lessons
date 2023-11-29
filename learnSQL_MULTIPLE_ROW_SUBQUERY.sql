select * from jobs;

select first_name, last_name, salary from employees
where job_id in (select job_id from jobs where min_salary > 8000);

select first_name, last_name, salary from employees
where job_id not in (select job_id from jobs where min_salary > 8000);


select first_name, last_name, salary from employees
where salary > any(select salary from employees where department_id = 100);

select first_name, last_name, salary from employees
where salary > all(select salary from employees where department_id = 100);


select department_name from employees e join departments d on e.department_id = d.department_id;
select department_name from departments
where department_id in (select DISTINCT department_id from employees);

