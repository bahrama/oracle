select e.employee_id,
       e.salary,
       (select d.department_name
          from departments d
         where d.department_id = e.department_id)
  from employees e
 where e.department_id between 40 and 100;
 
 ---------------------------------------
 select employee_id, salary
  from employees
 where salary > (select salary from employees where last_name = 'Abel');
 -------------------------------------
 select *
  from employees E
 where E.salary = (select min(E.salary) from employees E);
 
 ----------------------------------------
select *
  from employees e
 where e.salary > (select avg(nvl(d.salary, 0))
                     from employees d
                    where e.department_id = d.department_id);
 -------------------------------------------
 
 select *
  from (select e.department_id
          from employees e
         group by e.department_id
        having sum(e.salary) between 5300 and 34000) tbl_dep_info
 inner join departments d
    on tbl_dep_info.department_id = d.department_id;
    
    ------------------------------------------------
    select tbl_count_info.country_name, sum(e.salary), count(*)
  from employees e
 inner join (select d.department_id, c.country_name
               from departments d
              inner join locations l
                 on d.location_id = l.location_id
              inner join countries c
                 on l.country_id = c.country_id
              where c.region_id = 2) tbl_count_info
    on e.department_id = tbl_count_info.department_id
 group by tbl_count_info.country_name
