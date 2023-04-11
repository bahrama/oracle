----------------------اجتماع با تکراری-----------
select e.employee_id emid , e.job_id jobid from employees e
union all
select h.employee_id , h.job_id from job_history h
order by emid;

-----------اجتماع بدون تکراری----------
select e.employee_id emid , e.job_id jobid from employees e
union 
select h.employee_id , h.job_id from job_history h
order by emid;
-----------------------

select e.employee_id emid , e.job_id jobid, null sdate , null depid from employees e
union 
select h.employee_id , h.job_id , h.start_date , h.department_id from job_history h
order by emid;

-------------اشتراک---------------
select e.employee_id emid , e.job_id jobid from employees e 
intersect
select h.employee_id , h.job_id from job_history h;

----------------------------------
select * from employees e where e.employee_id in (
select e.employee_id from employees e 
minus
select h.employee_id from job_history h);
