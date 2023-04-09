select e.department_id,
       listagg(e.first_name || ' ' || e.last_name, ', ') within group(order by e.employee_id) "Employees Names Per Dep"
  from employees e
 group by e.department_id;
