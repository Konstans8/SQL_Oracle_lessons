select * from user_objects;

select object_type, count(object_type) from user_objects
group by object_type order by object_type;


select object_type, count(object_type) from all_objects
group by object_type order by object_type;

select table_name from user_tables;


select rowid, last_name, salary from employees;


select * from employees;

create table students (
student_id integer,
name varchar2(15),
start_date date default round(sysdate),
scholarship number(6, 2),
avg_score number(4, 2) default 5
);

insert into students (student_id, name, start_date, scholarship, avg_score)
values(1, 'Kostia', to_date('18-SEP-19'), 1500.3, 7.8);
insert into students (student_id, name, start_date, scholarship, avg_score)
values(2, 'Jack', to_date('19-SEP-19'), 800.356, 8);
insert into students (student_id, name, scholarship)
values(3, 'Samantha', 555);

commit;

select * from students;

select * from new_emps2;

create table new_emps2 as (select employee_id, first_name, last_name, salary, department_id from employees);


select * from regions;

create table regions2 as (select * from regions);

select * from regions2;



select * from students;

alter table students add (course number default 3);
alter table students modify (avg_score number(5, 3));
alter table students modify (start_date date default null);
insert into students (student_id, name) values(4, 'Piter');
alter table students drop column scholarship;
alter table students rename column student_id to id;
alter table students read only;
delete from students where id=1;
drop table students;


truncate table students;
drop table students;



