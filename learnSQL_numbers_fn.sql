select round(3.56746, 3) from dual;

select salary*3.14, round(salary*3.1415) from employees;

select round(356826, -5) from dual;

select first_name, round((sysdate - hire_date) * employee_id) as bonus from employees;


select trunc(3.56736, 4) from dual;

select trunc(35456.56736, -3) from dual;


select mod(7, 3) from dual; 


select * from employees where mod(employee_id, 2) = 0;

select employee_id, first_name, last_name, mod(employee_id, 3)+1 as team from employees;

