select e.employee_id,
       e.salary,
       case
         when e.salary <= 1000 then
          'A'
         when e.salary >= 1001 and
          e.salary < 2000 then
          'B'
           when e.salary between 2000 and 4000 then
          'C'
         else
          'D'
       end gggg
  from employees e;
  ----------------
  select e.employee_id,
       e.job_id,
       decode(e.job_id, 'IT_PROG', 'A', 'SA_REP', 'B', 'ST_CLERK', 'C', 'D') grade
  from employees e;
