select length(123) from dual;
select length(sysdate) from dual;
select add_months('05-SEP-19', 3) from dual;
select next_day('20-AUG-23', 5) from dual;
select next_day('20-AUG-23', 'wed') from dual;



select to_char(18, '99999') from dual;
select to_char(18, '099999') from dual;
select to_char(18, '099999.999') from dual;
select to_char(18, '099999D999') from dual;
select to_char(12345678, '99,999,999') from dual;
select to_char(12345678, '99G999G999') from dual;
select to_char(18, '$0999') from dual;
select to_char(18, 'L0999') from dual;
select to_char(-18, '999MI') from dual;
select to_char(-18, '09999PR') from dual;
select to_char(18, '09999PR') from dual;
select to_char(18, 'S099') from dual;

select first_name, salary*1.111111111, 
to_char(salary*1.111111111, '$999,999,99'),
to_char(salary*1.111111111, '$9,999')
from employees;

select to_char(sysdate, 'YY') from dual;
select to_char(sysdate, 'RR') from dual;
select to_char(sysdate, 'YEAR') from dual;
select to_char(sysdate, 'Month') from dual;
select hire_date, to_char(hire_date, 'Month', 'NLS_DATE_LANGUAGE = RUSSIAN') from employees;

select to_char(sysdate, 'd') from dual;
select to_char(sysdate, 'dD') from dual;
select to_char(sysdate, 'DDD') from dual;
select to_char(sysdate, 'Dy') from dual;
select to_char(sysdate, 'Day') from dual;
select to_char(sysdate, 'w') from dual;
select to_char(sysdate, 'ww') from dual;
select to_char(sysdate, 'cc') from dual;
select to_char(sysdate, 'p.m.') from dual;
select to_char(sysdate, 'hh24') from dual;
select to_char(sysdate, 'mi') from dual;
select to_char(sysdate, 'ss') from dual;
select to_char(sysdate, 'sssss') from dual;
select to_char(sysdate, 'fmday!mon?yyyy') from dual;

select 'my colleague with ID = '||employee_id || ' and job_id = '||job_id||
' joined us on '|| to_char(hire_date, 'fmDay "the "ddTH "of "fmMonth YYYY')
from employees;



