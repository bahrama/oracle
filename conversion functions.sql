select to_char(sysdate, 'yyyy/mm/dd', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'year', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'yyyy mm', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'yyyy month', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'yyyy mon', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'yyyy month dd', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'fmyyyy month dd', 'nls_calendar=persian')
  from dual;
select to_char(sysdate, 'fmyyyy month day', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'fmyyyy month dy', 'nls_calendar=persian') from dual;

select to_char(sysdate, 'yyyy-mm-dd') from dual;
select to_char(sysdate, 'year') from dual;
select to_char(sysdate, 'yyyy mm') from dual;
select to_char(sysdate, 'yyyy month') from dual;
select to_char(sysdate, 'yyyy mon') from dual;
select to_char(sysdate, 'fmyyyy month dd') from dual;
select to_char(sysdate, 'fmyyyy month day') from dual;
select to_char(sysdate, 'fmyyyy month dy') from dual;

select to_char(123654.36, 'fm999,999.99L')  from dual;
select to_char(123654.36, 'fm999,999.99$')  from dual;
select to_char(e.salary, 'fm999,999'), e.salary ,  e.first_name, e.employee_id
  from employees e;

/**************/
select to_date('1399/02/12', 'yyyy/mm/dd', 'nls_calendar=persian'),
       to_date('1399/02/12', 'yyyy/mm/dd', 'nls_calendar=persian') + 12
  from dual;
select to_date('2012-02-03', 'yyyy-mm-dd') from dual;
/**************/
select '123456' + '5' , to_number('123456')  ,'123456' from dual;
select to_number('123,456', '999,999') from dual;
select to_char(2 * 5 / 4) from dual
