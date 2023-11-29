select to_date('08-MAR-23') from dual;

select to_date('18:30 2023!03-Oct', 'HH24:mi yyyy!dd-Mon') from dual;

select to_char(to_date('18:30 2023!03-Oct', 'HH24:mi yyyy!dd-Mon'),
'dd-Mon-RR hh24:mi:ss')from dual;

select * from employees where hire_date > to_date('01-JAN_05', 'dd-MON-RR');