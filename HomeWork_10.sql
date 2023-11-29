create table locations2 as (select * from locations where 1=2);

select * from locations;
select * from locations2;

insert into locations2 (location_id, street_address, city, country_id)
values (3300, '1314 Sezam', 'Milan', 'IT');
insert into locations2 (location_id, street_address, city, country_id)
values (3400, '1516 Szopen', 'Turin', 'IT');
insert into locations2 (location_id, street_address, city, country_id)
values (3500, '1617 West Br', 'Chichago', 'IT');

commit;

insert into locations2 (select * from locations where length(state_province) > 9);

commit;
select * from locations2;


create table locations4europe as (select * from locations where 1=2);

insert all
when 1=1 then
into locations2
values (location_id, street_address, postal_code, city, state_province, country_id)
when country_id in
(select country_id from countries where region_id = 1) then
into locations4europe (location_id, street_address, city, country_id)
values (location_id, street_address, city, country_id)
select * from locations;

select * from locations4europe;


select * from locations2;
update locations2 set postal_code = '789456'
where postal_code is null;

rollback;

