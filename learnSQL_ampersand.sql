select first_name, last_name, salary from employees where first_name = &name;
select first_name, last_name, salary from employees where first_name = '&name';

select first_name, last_name, salary
from employees
where first_name like '%&leter%'
and last_name like '%&leter%';


select first_name, last_name, salary
from employees
where first_name like '%&&leter%'
and last_name like '%&leter%';

