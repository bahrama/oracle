-- case equal
  select ..... , case input_value when equal_value1 then result1 
                                  when equal_value2 then result2
                                  when equal_value3 then result3
                                  when equal_value4 then result4
                                  when equal_value5 then result5
                                  else
                                      resultn
                                  end [alias] , column_name , ... 
from <table_name>                                          
[where ...]
[order by ...];
/**************/
-- case comparition
  select ..... , case when condition1 then result1 
                      when condition2 then result2
                      when condition3 then result2
                      else
                      resultn
                 end [alias] , column_name , ...
                 
from <table_name>                                          
[where ...]
[order by ...];
/**************/
if salary >= 1000 and salary <= 5000 ===> grade 'A'
if salary >= 5001 and salary <= 7000 ===> grade 'B'
if salary >= 7001 and salary <= 9000 ===> grade 'C'
else ===> grade 'D'
/**************/






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
       end grade
  from employees e;
/****************/
select e.employee_id,
       e.job_id,
       case e.job_id
         when 'IT_PROG' then
          'A'
         when 'SA_REP' then
          'B'
         when 'ST_CLERK' then
          'C'
         else
          'D'
       end grade

  from employees   e;
/****************/
select e.employee_id,
       e.job_id,
       decode(e.job_id, 'IT_PROG', 'A', 'SA_REP', 'B', 'ST_CLERK', 'C', 'D') grade

  from employees e;
