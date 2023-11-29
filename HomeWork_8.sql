select * from employees
where length(first_name) = (select max(length(first_name)) from employees);

select * from employees
where salary > (select avg(salary) from employees);

select city
from employees e
join departments d on (e.department_id = d.department_id)
join locations l on (l.location_id = d.location_id)
group by city
having sum (salary) = (select min(sum(salary))
        from employees e 
            join departments d on (e.department_id = d.department_id)
            join locations l on (l.location_id = d.location_id)
        group by city);
        
        
select * from employees
where manager_id in (select employee_id from employees where salary > 15000);

select * from departments 
where department_id not in (select distinct department_id from employees where department_id is not null);

select * from employees
where employee_id not in (select distinct manager_id from employees where manager_id is not null);

select * from employees e
where (select count(*) from employees where manager_id = e.employee_id) > 6;

select * from employees
where department_id = (select department_id from departments where department_name = 'IT');

select * 
from employees
where manager_id in (select employee_id
                            from employees
                            where to_char (hire_date, 'YYYY') = '2005')
                    and hire_date < to_date ('01-01-2005', 'DD-MM-YYYY');