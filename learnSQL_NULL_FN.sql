select nvl(null, 19) from dual;

select first_name, nvl(commission_pct, 0) from employees;

select first_name, nvl(substr(first_name, 6), 'name is too short') from employees;

select first_name, commission_pct, nvl(salary*commission_pct, 500) as bonus from employees;

select nvl2(17, 18, 19) from dual;
select nvl2(null, 18, 19) from dual;
select nvl2(17, null, 19) from dual;

select first_name, nvl2(commission_pct, commission_pct, 0) from employees;

select first_name, nvl2(commission_pct, 'pct', 'not pct') from employees;


select nullif(18, 19) from dual;

select nullif('you can not write string here, only number', 19) from dual;

select nullif('18-SEP-87','18/SEP/87') from dual;
select nullif(to_date('18-SEP-87'), to_date('18/SEP/87')) from dual;

select * from countries;

select country_id, country_name,
nvl2(nullif(country_id, upper(substr(country_name, 1, 2))), 'sovpadeniy net', 'sovpadenie jest') as sravnenie
from countries;


select coalesce(1, null, 3) from dual;
select coalesce(null, 2, 3) from dual;
select coalesce(1, 2, null) from dual;
select coalesce(null, null, null, 'ok') from dual;
select coalesce(null, null, null, 4) from dual;


select first_name, commission_pct, manager_id, salary,
coalesce(commission_pct, manager_id, salary) as info from employees;

