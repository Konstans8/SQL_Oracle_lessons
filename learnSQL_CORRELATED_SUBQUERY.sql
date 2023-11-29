select first_name, last_name, salary from employees
where salary > (select avg(salary) from employees);


select e1.first_name, e1.last_name, e1.salary from employees e1
where salary > (select avg(e2.salary) from employees e2
where e2.department_id = e1.department_id);



select * from employees;
select * from departments;
select * from locations;
select * from countries;

select first_name, last_name, salary from employees where department_id in
(select department_id from departments where location_id in 
(select location_id from locations where country_id = 
(select country_id from countries where country_name = 'Germany')));

