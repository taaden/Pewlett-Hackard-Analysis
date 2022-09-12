
SELECT DISTINCT ON(emp_no)
           rt.emp_no,
            rt.first_name,
          rt.last_name,rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date ='9999-01-01'
ORDER BY emp_no ASC,to_date DESC;