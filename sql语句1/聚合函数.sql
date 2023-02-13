USE atguigudb;

SELECT
    employee_id,
    last_name,
    department_name
FROM
    employees AS e
    JOIN departments AS d ON e.department_id = d.department_id
    AND e.manager_id = d.manager_id;

SELECT
    employee_id,
    last_name,
    department_name
FROM
    employees e NATURAL
    JOIN departments s;

SELECT
    employee_id,
    last_name,
    department_name
FROM
    employees e
    JOIN departments d USING (department_id, manager_id);

SELECT
    employee_id,
    last_name,
    department_name
FROM
    employees e,
    departments d
WHERE
    e.department_id = d.department_id
SELECT
    employee_id,
    last_name,
    department_name
FROM
    employees e
    JOIN departments d ON e.department_id = d.department_id
SELECT
    SIGN(0),
    SIGN(1),
    SIGN(-1)
FROM
    DUAL;

SELECT
    PI()
FROM
    DUAL;

SELECT
    LEAST(-1, 1, 0)
FROM
    DUAL;

SELECT
    IF(3 > 2, 3, 2) ans
FROM
    DUAL;

SELECT
    IFNULL(NULL, 3) AS ret
FROM
    DUAL;

SELECT
    CASE
        WHEN 1 > 2 THEN 0
        WHEN 2 > 3 THEN 3
        WHEN 5 > 0 THEN 5
    END AS ans
FROM
    DUAL;

SELECT
    IFNULL(NULL, 'hello') ret
FROM
    DUAL;

SELECT
    last_name,
    department_id,
    CASE
        department_id
        WHEN department_id = 10 THEN salary * 1.1
        WHEN department_id = 20 THEN salary * 1.2
        WHEN department_id = 30 THEN salary * 1.3
        ELSE salary
    END AS real_salary
FROM
    employees;

SELECT
    PASSWORD('mysql');

SELECT
    PASSWORD('mysql'),
    PASSWORD(NULL);

SELECT
    md5('123')
FROM
    DUAL;

SELECT
    AVG(salary),
    MAX(salary),
    MIN(salary),
    SUM(salary)
FROM
    employees
WHERE
    salary > 2000
    AND salary < 8000;

SELECT
    COUNT(1)
FROM
    employees
WHERE
    department_id = 50;

SELECT
    COUNT(*),
    COUNT(department_id)
FROM
    employees;

SELECT
    department_id,
    AVG(salary)
FROM
    employees
GROUP BY
    job_id;

SELECT
    AVG(salary)
FROM
    employees
GROUP BY
    department_id;

SELECT
    department_id did,
    job_id jid
FROM
    employees
GROUP BY
    department_id,
    job_id;

SELECT
    department_id,
    job_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id,
    job_id;

SELECT
    department_id,
    AVG(salary)
FROM
    employees
WHERE
    department_id > 80
GROUP BY
    department_id;