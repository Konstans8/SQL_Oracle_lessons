select * from job_history;

select * from nls_session_parameters where parameter='NLS_DATE_FORMAT';

select sysdate from dual;

select sysdate-hire_date from employees;
select sysdate, sysdate + 5, sysdate + 5.5 from dual;

select TO_CHAR(sysdate, 'DD-MM-RR hh24:mi:ss') from dual;


select * from job_history;

select employee_id, months_between(end_date, start_date) from job_history;

select months_between('23.12.12', '23.02.05') from dual;
select months_between('23.12.12', '23.02.05')*31 from dual;


select end_date, add_months(end_date, 4) as new_months from job_history;

select next_day(sysdate, 3) from dual;

select * from sys.nls_session_parameters;

select last_day(sysdate) from dual;


select hire_date, round(hire_date, 'YYYY') from employees 
where employee_id in (120, 121);

select hire_date, round(hire_date, 'MM') from employees 
where employee_id in (120, 121);



