select * from employees;

update employees set salary = 10000 where employee_id = 100;

update employees set salary = salary*2 where employee_id = 100;

update employees set salary = 500000 where employee_id = 207;

update employees set job_id = upper('it_prog') where employee_id = 207;
update employees set job_id = upper('st_man'), salary = 100 where employee_id = 208;
update employees set first_name = 'Jason' where employee_id = 207;

update employees set salary = 34000, job_id = upper('ad_asst') where employee_id = 101;

update employees set salary = 100000 where employee_id < 105;


update employees set 
salary = (select max(salary) from employees),
hire_date = (select min(start_date) from job_history)
where employee_id = 180;
