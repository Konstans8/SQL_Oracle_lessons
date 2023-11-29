select length(upper(sysdate)) from dual;

select first_name, length(first_name), round(123.456765478, length(first_name)) from employees;

select first_name, last_name, phone_number,
to_number(substr(phone_number, instr(phone_number, '.') +1), '999.9999') * 10000 as form_numb from employees
where employee_id < 130;