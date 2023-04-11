-------any -> or-------------------
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY
(SELECT salary
FROM employees
WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

-------------all -> and----------------------

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ALL
(SELECT salary
FROM employees
WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

-----------------------------------
SELECT emp.last_name
  FROM employees emp
 WHERE emp.employee_id NOT IN (SELECT nvl(mgr.manager_id,0) FROM employees mgr);
