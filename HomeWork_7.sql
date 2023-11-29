select region_name, count(*)
    from employees e
        join departments d on (e.department_id = d.department_id)
        join locations l on (d.location_id = l.location_id)
        join countries c on (l.country_id = c.country_id)
        join regions r on (c.region_id = r.region_id)
group by region_name;

select first_name, last_name, department_name, job_id, street_address, country_name, region_name
    from employees e
        join departments d on (e.department_id = d.department_id)
        join locations l on (d.location_id = l.location_id)
        join countries c on (l.country_id = c.country_id)
        join regions r on (c.region_id = r.region_id);
        

select man.first_name, count(*)
from employees emp join employees man on (emp.manager_id = man.employee_id)
group by man.first_name
having count(*) > 6;

select department_name, count(*)
from employees join departments using (department_id)
group by department_name
having count (*) > 30;

select department_name
from employees e
right join departments d on (e.department_id = d.department_id)
where first_name is null;

select emp.*
from employees emp join employees man on (emp.manager_id = man.employee_id)
where to_char(man.hire_date, 'YYYY') = '2005'
and emp.hire_date < to_date('01-01-2005', 'DD-MM-YYYY');

select country_name, region_name from countries natural join regions;

select first_name, last_name, salary
from employees e join jobs j 
on (e.job_id = j.job_id and salary < min_salary+1000);

select distinct first_name, last_name, country_name
from employees e
full outer join departments d on (e.department_id = d.department_id)
full outer join locations l on (d.location_id = l.location_id)
full outer join countries c on (l.country_id = c.country_id);


select first_name, last_name, country_name
from employees cross join countries;

select department_name
from employees e, departments d
where e.department_id (+) = d.department_id
and first_name is null;




