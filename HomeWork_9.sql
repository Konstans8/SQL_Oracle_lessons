select manager_id, to_char(null), to_number(null), sum(salary) from employees group by manager_id
union
select to_number(null), job_id, to_number(null), sum(salary) from employees group by job_id
union
select to_number(null), to_char(null), department_id, sum(salary) from employees group by department_id;


select department_id from employees where manager_id = 100
minus
select department_id from employees where manager_id in (145, 201);

select location_id, postal_code, city from locations
where country_id in
(select country_id from countries where country_name in ('Italy', 'Germany'))
union all
select location_id, postal_code, city from locations
where postal_code like '%9%';


select country_id id, country_name country, region_id region from countries
where length(country_name)>8
union
select * from countries
where region_id !=(select region_id from regions where region_name = 'Europe')
order by country desc;