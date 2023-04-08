﻿select e.employee_id,
       e.salary,
       e.salary * 12,
       e.commission_pct,
       nvl(e.commission_pct, '0'),
       (e.salary * 12) + (e.salary * 12 * nvl(e.commission_pct, 0)) income
  from employees e;

/******* != null => SAL+COMM***********/
/******* == null => SAL***********/
select e.employee_id,
       e.commission_pct,
       nvl2(e.commission_pct, 'SAL+COMM', 'SAL') income_source
  from employees e;
/*********2=2 =>null , 2!=3 => 2 *********/
select nullif(2, 2), nullif(2, 3) from dual;

/**********اولین ستون غیر نال رو برمیگردونه********/
select coalesce(id1, id2, id3, id4, id5, 100)
  from (select 1 id1, null id2, null id3, 3 id4, 4 id5
          from dual
        union all
        select null id1, null id2, null id3, null id4, null id5
          from dual
        union all
        select null id1, null id2, null id3, null id4, 12 id5
          from dual
        union all
        select null id1, null id2, null id3, 100 id4, null id5
          from dual) tbl_a;
/******************/
