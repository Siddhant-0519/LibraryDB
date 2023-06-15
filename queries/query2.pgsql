\echo --Query 2
\echo 

\echo Retrieve Most popular author by check out count
\echo

SELECT a.author_id, a.author_name, COUNT(*) AS checkout_count
FROM Authors a
JOIN Books b ON a.author_id = ANY (b.author_ids)
JOIN Checkouts c ON b.isbn = c.isbn
GROUP BY a.author_id, a.author_name
ORDER BY checkout_count DESC
LIMIT 1;

\echo
\echo Can change the limit to find n most popular authors
\echo
