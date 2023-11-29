select decode(3*4, 12, 'twelve') from dual;
select decode(3*4, 14, 'twelve') from dual;
select decode(3*4, 13, 'twelve', 17, 10+7, 'hello') from dual;
select decode(3*4, 13, 'twelve', 12, 10+7, 'hello') from dual;
select decode(3*4, 13, 'twelve', 12, 'hello') from dual;

select decode(2+2*2*100, 5, 'five', 12/2, 'six1', 6, 'six2', '!!!') from dual;



select 
case 3*4
when 12 then 100
end
from dual;

select 
case 3*4
when 12 then 'twelve1'
when 12 then 'twelve2'
when 24/2 then 'twelve3'
end
from dual;


select
case
when 3*4=11 then 'eleven'
when 'ok'='OK' then 'twelve1'
when 50/2*3=24/2 then 'twelve2'
else '!!!'
end as "case statement"
from dual;