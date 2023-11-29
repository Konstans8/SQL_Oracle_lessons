select first_name, salary, department_name
from employees e left outer join departments d on (e.department_id = d.department_id);


select postal_code, city, department_name
from locations l join departments d on (d.location_id = l.location_id);

select postal_code, city, department_name
from locations l left outer join departments d on (d.location_id = l.location_id);



select country_name, city, street_address
from locations l right outer join countries c on (l.country_id = c.country_id);


select first_name, last_name, salary, department_name
from employees e full outer join departments d
on (e.department_id = d.department_id);




select * from countries cross join regions order by country_id;

