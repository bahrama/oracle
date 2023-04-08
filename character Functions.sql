select 'Best Oracle SQL Student' meaning from dual;
select concat('Best Oracle', concat(' ', 'SQL Student')) from dual;
select length('Best Oracle SQL Student') from dual;
select lower('Best Oracle SQL Student') from dual; -- where lower(first_name) = lower(&p_first_name)
select upper('Best Oracle SQL Student') from dual;
select initcap('best oracle sQL Student') from dual;
select trim('               Best Oracle SQL Student     ') from dual;
select trim('               1235411     ')+2 from dual;
select trim('B' from 'Best Oracle SQL Student') from dual;
select ltrim('               Best Oracle SQL Student     ') from dual;
select rtrim('               Best Oracle SQL Student     ') from dual;

select substr('Best Oracle SQL Student', 3) from dual;
select substr('Best Oracle SQL Student', 3, 4) from dual;
select substr('Best Oracle SQL Student', -5) from dual;
select substr('Best Oracle SQL Student', -5, 2) from dual;
select instr('Best Oracle SQL Student', 'S') from dual;
select instr('Best Oracle SQL Student', 'S', 3, 2) from dual;
select instr('Best Oracle SQL Student', 'S', 14, 1) from dual;
select lpad('Best Oracle SQL Student', 30, '0') from dual;
select rpad('Best Oracle SQL Student', 30, '0') from dual;
select length(rpad('Best Oracle SQL Student', 30, '0')) from dual;
select replace('Best Oracle SQL Student', 'S', '/') from dual;
select replace('Best Oracle SQL Student', ' ', '') from dual;
select replace('Best Oracle SQL Student', ' ', null) from dual;
select substr(&p_input, 1, instr(&p_input, ';') - 1) from dual;
select replace('      &p_input_new    ',
               '&p_input_new',
               replace('&p_input_new', ' ', null))
  from dual;

select 'ali' from dual where 1 = 2;
select 'ali' from dual where &p_input is null
