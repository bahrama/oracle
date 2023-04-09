select count(e.commission_pct) from employees e;
select avg(nvl(e.commission_pct , 0)) from employees e;
select min(e.first_name) from employees e;
select max(e.hire_date) from employees e;
select e.department_id dep , count(e.employee_id) , sum(e.salary) 
from employees e group by(e.department_id);
select e.department_id dep , e.job_id , count(e.employee_id) , sum(e.salary) 
from employees e group by e.department_id , e.job_id;
SELECT department_id,
       sum(salary) as sum,
       min(hire_date) as hire,
       count(employee_id) as cnt
  FROM employees
 GROUP BY department_id
HAVING count(employee_id) between 5 and 13;
