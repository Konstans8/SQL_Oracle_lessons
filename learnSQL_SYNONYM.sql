select * from hr.employees;

select * from students;

create synonym syn1 for students;

select * from syn1;
delete from syn1 where id = 1;