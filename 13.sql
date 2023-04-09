-------none equi join-------------------
select e.employee_id, e.salary, eg.grade
  from employees e
  join emp_grade eg
    on e.salary between eg.from_salary and eg.to_salary;
