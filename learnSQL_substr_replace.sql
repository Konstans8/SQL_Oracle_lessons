select * from employees;
select * from employees where INSTR(job_id, 'PROG')=4;

select INSTR('Kostia Huszcza', 's') from dual;

select * from employees where INSTR(salary, '2')=2;

select INSTR('Kostia Huszcza', 's', 3, 2) from dual;


select email, substr(email, 4) from employees;
select email, substr(email, 6, 2) from employees;

select substr('Hello world', 7) from dual;
select substr('Hello world', 7, 3) from dual;
select substr('Hello world', 20, 10) from dual;

select substr('Hello world', -3) from dual;

select salary, substr(salary, 1, 3) from employees;


select replace('Hello world and me', 'o', '$') from dual;

select salary, replace(salary, '1', '9') from employees;



