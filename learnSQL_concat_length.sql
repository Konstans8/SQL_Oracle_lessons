select concat('priver, ', 'drug') from dual;

select concat(salary*2, hire_date) from employees;

select sysdate from dual;
select concat('today is ', sysdate) from dual;


select first_name, length(first_name) as dlina from employees;

select length('Kostia') from dual;

select country_name from countries where length(country_name)<8;