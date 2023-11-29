select * from employees ;

select * from departments;

select e.salary, e.first_name from employees e;



select * from regions;
select * from countries;

select * from regions natural join countries;

select c.country_name, c.country_id, r.region_name, region_id from regions r natural join countries c;


select * from employees where department_id = 90 and manager_id = 100;
select * from departments where department_id = 90 and manager_id = 100;

select first_name, last_name, salary, department_name, manager_id from employees natural join departments;



select * from employees;
select * from job_history;

select * from employees natural join job_history;


