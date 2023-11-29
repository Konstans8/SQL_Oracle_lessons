create table students (
id number constraint st_id_unique unique,
name varchar2(15),
course number,
faculty_id integer,
avg_score number(5, 2),
start_date date,
scholarship integer
);

create table students (
id number unique,
name varchar2(15),
course number,
faculty_id integer,
avg_score number(5, 2),
start_date date,
scholarship integer
);

select * from students;
drop table students;

create table faculties (
id number,
name varchar2(15)
);

insert into students values (1, 'Kostia', 3, 1, 8.7, to_date('15-AUG-2020'), 1500);
insert into students values (null, 'Kostia', 3, 1, 8.7, to_date('15-AUG-2020'), 1500);
insert into students values (2, 'Ola', 4, 1, 8.7, to_date('15-AUG-2020'), 2500);



create table students (
id number constraint st_id_unique unique,
name varchar2(15),
course number constraint stud_course_notnull not null,
faculty_id integer
);

select * from students;

insert into students values (1, 'Kos', 3, 5);
insert into students values (1, 'Kos', null, 5);

alter table students modify (course not null);








