SELECT
    e.employee_id,
    e.last_name,
    d.department_id
FROM
    employees AS e
    JOIN departments AS d ON e.department_id = d.department_id;

SELECT
    e.employee_id,
    e.last_name,
    d.department_id
FROM
    employees e
    LEFT JOIN departments d ON e.department_id = d.department_id;

SELECT
    e.employee_id,
    e.last_name,
    d.department_id
FROM
    employees e
    RIGHT JOIN departments d ON e.department_id = d.department_id;

SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    LEFT JOIN departments d ON e.department_id = d.department_id
WHERE
    ISNULL(d.department_id);

SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    RIGHT JOIN departments d ON e.department_id = d.department_id
WHERE
    ISNULL(e.department_id);

SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    LEFT JOIN departments d ON e.department_id = d.department_id
UNION
SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    RIGHT JOIN departments d ON e.department_id = d.department_id
ORDER BY
    employee_id DESC;

SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    LEFT JOIN departments d ON e.department_id = d.department_id
WHERE
    d.department_id IS NUll
UNION
ALL
SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    RIGHT JOIN departments d ON e.department_id = d.department_id
ORDER BY
    employee_id DESC;

SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    LEFT JOIN departments d ON e.department_id = d.department_id
WHERE
    d.department_id IS NUll
UNION
ALL
SELECT
    e.employee_id,
    e.last_name,
    d.department_name
FROM
    employees e
    RIGHT JOIN departments d ON e.department_id = d.department_id
WHERE
    e.department_id IS NUll
ORDER BY
    LENGTH(last_name);