select * from jobs;

select first_name, salary, min_salary, max_salary
from employees e join jobs j on (e.job_id = j.job_id and salary*2<max_salary);

select first_name, salary, min_salary, max_salary
from employees e join jobs j on (e.job_id = j.job_id and salary=max_salary);

select first_name, salary, min_salary, max_salary
from employees e join jobs j on (e.job_id = j.job_id and salary<max_salary);

select first_name, salary, min_salary, max_salary
from employees e join jobs j on (e.job_id = j.job_id and
salary between min_salary+2000 and max_salary-3000);

