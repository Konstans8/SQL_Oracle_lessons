select * from jobs where job_id like '%MAN%'
union all
select * from jobs where job_id like '%MAN%';


select job_id, job_title, min_salary from jobs where job_id like '%MAN%'
union all
select job_id, job_title, min_salary from jobs where job_id like '%MAN%'
order by min_salary desc;


select first_name, last_name, salary from employees
where employee_id > 200
union all
select job_id, job_title, max_salary from jobs where job_id like '%MAN%';


select * from jobs where job_id like '%MAN%'
union
select * from jobs where job_id like '%MAN%';


select * from jobs where job_id like '%MAN%'
INTERSECT
select * from jobs where job_id like '%MAN%';


select * from jobs where min_salary between 4500 and 8000
intersect
select * from jobs where max_salary between 10000 and 15000;


select * from jobs where job_id like '%MAN%'
minus
select * from jobs where job_id like '%MAN%';


select * from jobs where min_salary between 4500 and 8000
minus
select * from jobs where max_salary between 10000 and 15000;


select first_name, salary from employees where first_name like '%a%'
intersect
select first_name, salary from employees where first_name like '%e%'
minus
select first_name, salary from employees where first_name like '%l%';


select first_name, salary from employees where first_name like '%e%'
union
(select first_name, salary from employees where first_name like '%a%'
minus
select first_name, salary from employees where first_name like '%l%');


select department_id dep_id, to_char(null) job_id, sum(salary) from employees
group by department_id
union
select to_number(null), job_id, sum(salary) from employees
group by job_id;





