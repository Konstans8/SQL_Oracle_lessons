select TRIM(trailing 'q' from 'AAAAAAAAAqqqqqqqq') from dual;

select TRIM(leading 'q' from 'qqqqqqqqqqqqqAAAAAAAAAqqqqqqqq') from dual;

select TRIM('q' from 'qqqqqqqqqAAAAAAAAAqqqqqqqq') from dual;

select TRIM(' ' from '       AAAA AAAAA        ') from dual;
select TRIM('       AAAA AAAAA        ') from dual;

select TRIM(both 7 from 7354777) from dual;





