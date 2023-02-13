SELECT
    e.employee_id,
    e.last_name,
    e.department_id
FROM
    employees AS e CROSS FULL
    OUTER JOIN departments AS d ON e.department_id = d.department_id;

SELECT
    last_name,
    department_name
FROM
    employees,
    departments;

SELECT
    COUNT(employee_id)
FROM
    employees;

#107
SELECT
    COUNT(department_id)
FROM
    departments;

#27
SELECT
    last_name,
    department_name
FROM
    emplotees,
    departments;

#等价于
SELECT
    last_name,
    department_name
FROM
    employees
    CROSS JOIN departments;

#等价于
SELECT
    last_name,
    department_name
FROM
    employees
    JOIN departments;

#等价于
SELECT
    last_name,
    department_name
FROM
    employees
    INNER JOIN departments;

SELECT
    e.last_name,
    d.department_name
FROM
    employees e,
    departments d
WHERE
    e.department_id = d.department_id;

SELECT
    e.last_name,
    d.department_name,
    l.city
FROM
    employees e,
    departments AS d,
    locations l
WHERE
    e.department_id = d.department_id
    AND d.location_id = l.location_id;

SELECT
    e.last_name,
    e.salary,
    j.grade_level
FROM
    employees AS e,
    job_grades AS j
WHERE
    e.salary BETWEEN j.lowest_sal
    AND j.highest_sal;

SELECT
    emp.last_name "worker name",
    boss.last_name "boss name"
FROM
    employees AS emp,
    employees AS boss
WHERE
    boss.employee_id = emp.manager_id;

SELECT
    CONCAT(
        worker.last_name,
        ' works for ',
        manager.last_name
    )
FROM
    employees AS worker,
    employees AS manager
WHERE
    worker.manager_id = manager.employee_id;

#CONCAT可以让每一列输出字符串
SELECT
    worker.last_name AS workername,
    boss.last_name AS bossname
FROM
    employees AS worker,
    employees boss
WHERE
    worker.manager_id = boss.employee_id
    AND worker.last_name = 'Chen';

SELECT
    last_name,
    department_name
FROM
    employees,
    departments
WHERE
    employees.department_id = departments.department_id(+);

SELECT
    e.employee_id,
    e.last_name,
    e.department_id
FROM
    employees AS e
    JOIN departments AS d ON e.department_id = d.department_id;

SELECT
    e.employee_id,
    e.last_name,
    e.department_id
FROM
    employees AS e
    LEFT JOIN departments AS d ON e.department_id = d.department_id;

SELECT
    e.employee_id,
    e.last_name,
    e.department_id
FROM
    employees e
    LEFT OUTER JOIN departments d ON e.department_id = d.department_id
UNION
SELECT
    e.employee_id,
    e.last_name,
    e.department_id
FROM
    employees e
    RIGHT OUTER JOIN departments d ON e.department_id = d.department_id;

SELECT
    *
FROM
    employees
WHERE
    department_id > 90
UNION
SELECT
    *
FROM
    employees
WHERE
    email LIKE '%a%';

SELECT
    *
FROM
    employees
WHERE
    email LIKE '%a%'
    OR department_id > 90;