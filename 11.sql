select e.employee_id, e.first_name, e.salary, d.department_name
  from employees e
  left join departments d
  on e.department_id = d.department_id;
    
 select e.employee_id, e.first_name, e.salary, d.department_name
   from employees e
   join departments d
   on e.department_id = d.department_id;
         
 select e.employee_id, e.first_name, e.salary, d.department_name
  from employees e
  right join departments d
  on e.department_id = d.department_id;
  
  select j.job_id, j.job_title, count(e.employee_id), sum(e.salary)
  from employees e
  left join jobs j
    on e.job_id = j.job_id
  group by j.job_id, j.job_title;
  ------\\---------
  ------| /|-------
  ------ job_title for better performance added to min----------------
  select j.job_id, min(j.job_title), count(e.employee_id), sum(e.salary)
  from employees e
  left join jobs j
    on e.job_id = j.job_id
   group by j.job_id;
   
   --------------------------
   
   SELECT E.EMPLOYEE_ID, E.SALARY, L.CITY, C.COUNTRY_NAME
  FROM EMPLOYEES E
 INNER JOIN DEPARTMENTS D
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
 INNER JOIN LOCATIONS L
    ON L.LOCATION_ID = D.LOCATION_ID
 INNER JOIN COUNTRIES C
    ON C.COUNTRY_ID = L.COUNTRY_ID
 INNER JOIN REGIONS R
    ON R.REGION_ID = C.REGION_ID
 WHERE R.REGION_NAME = 'Americas';
 
 --------------------------------
 
 select e.first_name || e.last_name as "Emp name",
       p.first_name || p.last_name as "Manager name"
  from employees e
 left join employees p
    on e.manager_id = p.employee_id;
