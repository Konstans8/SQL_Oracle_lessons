select LPAD('Kostia', 10, 'n') from dual;
select RPAD('Hello', 23, ' world') from dual;

select first_name, LPAD(first_name, 25, '$') from employees;

select RPAD('Hello', 4, '!') from dual;

select RPAD(first_name, 30, ' ')||LPAD(salary, 8, ' ') from employees;

