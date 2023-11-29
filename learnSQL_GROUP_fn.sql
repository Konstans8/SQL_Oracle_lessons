select count(*) from employees;
select count(*) from employees where salary < 5000;
select * from employees;

select count(salary) from employees;
select count(commission_pct) from employees;
select count(nvl(commission_pct, 0)) from employees;

select count(distinct commission_pct) from employees;

select count(first_name), count(DISTINCT first_name) from employees;

select count(salary) from employees;


select sum(salary) from employees;

select sum(distinct commission_pct) from employees;

select sysdate-hire_date from employees;
select round(sum(sysdate-hire_date)/365) from employees;
select sum(length(first_name))/count(*) from employees;


select avg(salary) from employees where job_id='IT_PROG';

select avg(sysdate-hire_date)/365 from employees;

select min(salary), max(salary) from employees;

select count(salary), sum(salary), avg(salary), min(salary), max(salary) from employees;

select department_id, count(*) from employees group by department_id order by 1, 2;

select job_id, min(salary), max(salary) from employees group by job_id;


select department_id, count(*) from employees
group by department_id order by department_id;

select job_id, count(*) from employees
group by job_id order by job_id;

select department_id, job_id, count(*) from employees
group by department_id, job_id order by department_id;


select department_id, count(*) from employees
group by department_id
having count(*) > 3
order by department_id; 





