-- Use Dictinct with Orderby to remove duplicate to create unique_titles

SELECT DISTINCT ON(emp_no)
           rt.emp_no,
            rt.first_name,
          rt.last_name,rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date ='9999-01-01'
ORDER BY emp_no ASC,to_date DESC;

--creating retiring_titles
SELECT COUNT(title),title
INTO retiring_titles
FROM unique_titles
GROUP BY  title
ORDER BY COUNT DESC;

--- Creating a Mentorship Eligibility table
SELECT DISTINCT ON(emp_no) e.emp_no,e.first_name,e.last_name,e.birth_date,
      de.from_date,de.to_date,t.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (t.emp_no = e.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date ='9999-01-01')
ORDER BY emp_no;