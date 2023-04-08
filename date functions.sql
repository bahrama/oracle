select date '2016-02-21' + 1 / 24 / 60 , date '2016-02-21' , date '2016-02-21' + 5 / 24 /60 /60 from dual;
select add_months(date '2016-02-21', 3) from dual;
select add_months(date '2016-02-21', -3) from dual;
/**************/
select next_day(date '2016-02-21', 'friday') from dual;
select next_day(date '2016-02-21', 'fri') from dual;
/**************/
select last_day(date '2016-05-21') from dual;
/**************/
select months_between(date '2016-04-15', date '2016-02-15') from dual;
/**************/
-- alter session set nls_calendar=persian

select to_char(add_months(to_date('1399/05/31',
                                  'yyyy/mm/dd',
                                  'nls_calendar=persian'),
                          3),
               'yyyy/mm/dd',
               'nls_calendar=persian')
  from dual;

select to_char(last_day(to_date('1399/12/02',
                                'yyyy/mm/dd',
                                'nls_calendar=persian')),
               'yyyy/mm/dd',
               'nls_calendar=persian')
  from dual;

-- alter session set nls_calendar=gregorian
-- 1398/09/01
-- 13980901

select * from nls_session_parameters

select to_char(sysdate) from dual;
/*************/
select date '2015-02-03' from dual;
/*************/
select to_char(sysdate, 'yyyy/mm/dd', 'nls_calendar=persian') from dual;
select to_char(sysdate, 'yyyy', 'nls_calendar=persian') from dual;
select to_date('1393/12/04', 'yyyy/mm/dd', 'nls_calendar=persian')
  from dual;

select to_char(sysdate) from dual;
/*************/
select to_char(e.hire_date, 'yyyy/mm/dd', 'nls_calendar=persian') per_hire_date,
       e.employee_id,
       e.salary
  from employees e
 where to_char(e.hire_date, 'yyyy', 'nls_calendar=persian') in
       ('1384', '1385');
/*************/
select e.hire_date,
       round(e.hire_date, 'month'),
       round(e.hire_date, 'year'),
       trunc(e.hire_date, 'month'),
       trunc(e.hire_date, 'year')

  from employees e;

/*************/
select sysdate, trunc(sysdate), trunc(25.46,1) , round(25.46,1) from dual;
