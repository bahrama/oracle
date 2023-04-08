-- plus one minutes
select e.hire_date , (e.hire_date + 1/24/60) date_plus_min from employees e
