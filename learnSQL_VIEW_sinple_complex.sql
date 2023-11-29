select * from students;

insert into students values (3, 'Masha', 1, 1);

create view v101 as select name, course from students;

select * from v101;

insert into v101 values ('Ivan', 4);

delete from v101 where name = 'Ivan';

alter table students modify (id not null);


create view v106 as select distinct name, course from students;

select * from v106;
insert into v106 values ('Kola', 2);

create view v107 as select name n, course c from students;
select * from v107;

alter table students modify (id null);

insert into v107 values ('Jack', 4);

