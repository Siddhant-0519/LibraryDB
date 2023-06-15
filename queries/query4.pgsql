\echo --Query 4

\echo
\echo Retrieve Least popular publisher in last 3 months
\echo

SELECT p.publisher_id, p.publisher_name, COUNT(*) AS checkout_count
FROM Publisher p
JOIN Books b ON p.publisher_id = b.publisher_id
JOIN Checkouts c ON b.isbn = c.isbn
WHERE c.checkout_date >= NOW() - INTERVAL '3 months'
GROUP BY p.publisher_id, p.publisher_name
ORDER BY checkout_count ASC
LIMIT 1;

\echo
\echo Limit 'n' to find n least popular publishers
\echo