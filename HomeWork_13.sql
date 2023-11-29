create sequence s1;
select s1.nextval from dual;
select s1.currval from dual;


create table emp1000 as
select first_name, last_name, salary, department_id from employees;

create force view v1000 as
select first_name, last_name, salary, department_name, e.city
from emp1000 e join departments d on (e.department_id = d.department_id);

alter table emp1000 add (city varchar2(25));

alter view v1000 compile;

create synonym syn1000 for v1000;

drop view v1000;

drop synonym syn1000;

drop table emp1000;

create SEQUENCE seq1000
increment by 4
start with 12
maxvalue 200
cycle;

alter sequence seq1000
nomaxvalue
nocycle;