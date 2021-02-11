# Write your MySQL query statement below
SELECT e1.employee_id from Employees e1
LEFT JOIN Employees e2 on e1.manager_id = e2.employee_id -- Getting the First direct employee
LEFT JOIN Employees e3 on e2.manager_id = e3.employee_id -- Getting the Second direct employee
WHERE e1.employee_id != 1 -- Excluding the employee id 1
AND (e1.manager_id = 1 OR e2.manager_id=1 OR e3.manager_id = 1)  -- establishing the link to the highest level manager
