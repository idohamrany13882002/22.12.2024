-- targil
-- 1. use join- find all employees without branch
---
SELECT* FROM Employee
LEFT JOIN Branch on Employee.branch_id = Branch.branch_id
WHERE Employee.branch_id IS NULL;
---

-- 1.5. use join- find all employees with and without branch
---
SELECT* FROM Employee
LEFT JOIN Branch on Employee.branch_id = Branch.branch_id
---

-- 2. use join- find all branches without employees
---
SELECT* FROM Employee
RIGHT JOIN Branch on Employee.branch_id = Branch.branch_id
WHERE emp_id IS NULL;
---

-- 3. use join- find all employees and all branches
---
SELECT* FROM Employee
Full JOIN Branch on Employee.branch_id = Branch.branch_id
---

-- 4. use join- show only  employees who have branches
---
SELECT* FROM Employee
INNER JOIN Branch on Employee.branch_id = Branch.branch_id
---

-- 5. use join - show all emnployees that dont have branch and branches that dont have employees
---
SELECT* FROM Employee
FULL JOIN Branch on Employee.branch_id = Branch.branch_id
WHERE Employee.branch_id IS NULL
---

-- group by - count how many employees in each branch. show only barnches who have employees
---
SELECT*,COUNT(Employee.emp_id) FROM Branch
FULL JOIN Employee on Employee.branch_id = Branch.branch_id
GROUP BY branch.branch_name
HAVING COUNT(Employee.emp_id) > 0
---

-- group by - show avg salary for each branch. show only barnches who have employees
---
SELECT*,COUNT(Employee.emp_id), AVG(Employee.salary) FROM Branch
FULL JOIN Employee on Employee.branch_id = Branch.branch_id
GROUP BY branch.branch_name
HAVING COUNT(Employee.emp_id) > 0
---