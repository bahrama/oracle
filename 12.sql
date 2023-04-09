-------sql oracle inner join---------------
select * from employees e , departments d 
where e.department_id = d.department_id;

select * from employees e , departments d 
where e.department_id = d.department_id(+);

select * from employees e , departments d 
where e.department_id(+) = d.department_id;

-----------error--------------
select * from employees e , departments d 
where e.department_id(+) = d.department_id(+);
