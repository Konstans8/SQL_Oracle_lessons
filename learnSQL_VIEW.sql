select * from employees;

create view fin_emp as select employee_id, job_id, salary from employees;

select * from fin_emp;

create view fin_emp2 as 
select department_name, sum(salary) sum_salary from employees e join departments d
on (e.department_id = d.department_id) group by department_name;

select * from fin_emp2;

