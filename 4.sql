select 'ali' name from dual;
select sysdate , current_date from dual;
select (sysdate - e.hire_date)/7 week from employees e;
select e.first_name || ' ' || e.last_name from employees e;
select '1' + '3' from dual;
select 1 + 3 from dual;
select 1 || 3 from dual;
select '1' + null from dual;
select '1' || null from dual;
select q'[manager's id]' from dual;
select ' manager''s id' from dual;
select q'! manager''s id !' from dual;
