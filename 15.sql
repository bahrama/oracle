select *
  from departments
 where department_id in
       (select department_id
          from employees
         group by department_id
        having sum(salary) > (select min(salary)
                          from employees
                         where department_id = 40))
 ----------------------------------
 SELECT *
  FROM EMPLOYEES E
 WHERE E.DEPARTMENT_ID  IN
       (SELECT E1.DEPARTMENT_ID/*, MIN(E1.SALARY)*/
          FROM EMPLOYEES E1
         GROUP BY e1.DEPARTMENT_ID);     
         
        ------------------------
        
        select *
  from employees e1
 where (e1.department_id, e1.salary) in
       (select e.department_id, min(e.salary)
          from employees e
         group by e.department_id);
