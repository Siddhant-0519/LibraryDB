\echo --Query 1

\echo 
\echo Retrieve Last 5 students who check out a book in the past month
\echo

Select s.student_id,s.student_name
From students s
JOIN checkouts c ON s.student_id = c.student_id
WHERE c.checkout_date >= CURRENT_DATE -INTERVAL '1 MONTH'
Order by c.checkout_date DESC
Limit 5;

\echo
\echo Retrieve distict students
\echo 

Select DISTINCT on (s.student_id) s.student_id,s.student_name
From students s
JOIN checkouts c ON s.student_id = c.student_id
WHERE c.checkout_date >= CURRENT_DATE -INTERVAL '1 MONTH'
Order by s.student_id,c.checkout_date DESC
Limit 5;

\echo
