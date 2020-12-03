---Case Homework Query 7
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM
	employees e
	INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	LEFT JOIN departments d
	ON de.dept_no = d.dept_no
WHERE
	d.dept_no IN
	(
		SELECT
			d.dept_no
		FROM
			departments d
		WHERE
			d.dept_name = 'Sales'
			OR d.dept_name = 'Development'
	)
ORDER BY
	d.dept_name ,
	e.last_name ,
	e.first_name ;
	

