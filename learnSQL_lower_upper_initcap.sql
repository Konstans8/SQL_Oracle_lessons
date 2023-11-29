select * from employees;
select first_name, lower(first_name) from employees;

select lower('HelLo, HoW aRE yoU?') from dual;
select upper('HelLo, HoW aRE yoU?') from dual;
select initcap('HelLo, HoW aRE yoU?') from dual;


select * from employees where lower(first_name) = 'david';
select * from employees where upper(first_name) = 'DAVID';
select * from employees where initcap(first_name) = 'David';
