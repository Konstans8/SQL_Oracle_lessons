create table friends as
select employee_id id, first_name name, last_name surname
from employees
where commission_pct is not null;

alter table friends 
add (email varchar2(25));

alter table friends
modify (email varchar2(25) default 'no email');

insert into friends (id, name, surname) values (1, 'Kostia', 'Huszcza');

select * from friends;

alter table friends
rename column id to friens_id;

drop table friends;

create table friends (
id integer,
name varchar2(25),
surname varchar2(25),
email varchar2(25),
salary number(9, 3) default 0,
city varchar2(25),
birthday date default to_date('01-JAN-1987', 'DD-MON-YYYY')
);

insert into friends
values (1, 'Kostia', 'Huszcza', 'hello@world.js', 1500, 'Warszawa', to_date(sysdate));

insert into friends (id, name, surname, email, city)
values (2, 'Jim', 'Harris', 'jim@har.com', 'New York');

commit;

select * from friends;

alter table friends
drop column salary;

alter table friends
set unused column email;

alter table friends drop unused columns;

alter table friends read only;

insert into friends values (3, 'Mike', 'Junn', 'Chicago');

TRUNCATE TABLE friends;

drop table friends;
