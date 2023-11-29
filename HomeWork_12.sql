select * from v$version;

create table address(
id integer constraint ad_id_un unique,
country varchar2(25),
city varchar2(25)
);


create table friends(
id integer,
name varchar2(25),
email varchar2(25),
address_id integer references address(id) on delete set null,
birthday date,
check (length(name) > 3)
);

create unique index fr_id_un_in on friends(id);

alter table friends add constraint fr_id_pk primary key (id);

create unique index fr_email_in on friends(email);

alter table friends modify (email constraint fr_email_nn not null);

drop table friends;

drop table address;

