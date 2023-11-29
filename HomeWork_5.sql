select * from employees where instr(lower(first_name), 'b') > 0;

select * from employees where instr(lower(first_name), 'a', 1, 2) > 0;

select substr(department_name, 1, instr(department_name, ' ')-1) as first_word
from departments where instr(department_name, ' ') > 0;

select first_name, substr(first_name, 2, length(first_name) - 2) as new_name from employees;

select * from employees where to_char(hire_date, 'DD') = '01';

select * from employees where to_char(hire_date, 'YYYY') = '2008';

select first_name, to_char(hire_date, 'fmddth "of" Month, YYYY') hire_date from employees;

select first_name, to_char(salary + salary*0.20, '$999,999,00') as new_salary from employees;

select first_name, salary, salary + to_number('$12,345.55', '$99,999.99') from employees;

select first_name, salary,
to_char(salary + salary * nvl(commission_pct, 0), '$99,999.99') as full_salary
from employees;

select first_name, commission_pct, nvl2(commission_pct, 'yes', 'no') as info from employees;

select first_name, salary,
    case
        when salary < 5000 then 'Low'
        when salary >= 5000 and salary < 10000 then 'Normal'
        when salary >= 10000 then 'High'
    end
        as salary_level
from employees;

select country_name,
    decode(region_id,
        1, 'Europe',
        2, 'America',
        3, 'Asia',
        4, 'Africa',
        'Unknown')
    as region
from countries;

select country_name,
    case region_id
        when 1 then 'Europe'
        when 2 then 'America'
        when 3 then 'Asia'
        when 4 then 'Africa'
        else 'Unknown' 
    end
    as region
from countries;