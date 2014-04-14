with d_sal as
  (
  select
    d.DEPARTMENT_ID, max(e.SALARY) as max_salary
  from
    HR.EMPLOYEES e,
    HR.DEPARTMENTS d
  where
    e.DEPARTMENT_ID = d.DEPARTMENT_ID
  group by d.DEPARTMENT_ID
  having max(e.SALARY) > 9000
  )
select
  d.DEPARTMENT_NAME, max_salary
from
  d_sal ds,
  HR.DEPARTMENTS d
where
  ds.DEPARTMENT_ID = d.DEPARTMENT_ID;

