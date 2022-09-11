-- sales_dept_info
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name 
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';