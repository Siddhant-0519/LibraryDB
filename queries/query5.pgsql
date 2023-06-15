\echo --Query 5

\echo
\echo Retrieve librarian which checks out most books by specific author
\echo

SELECT l.librarian_id, l.librarian_name, COUNT(*) AS checkout_count
FROM librarian l
JOIN Checkouts c ON l.librarian_id = c.librarian_id
JOIN Books b ON c.isbn = b.isbn
WHERE '1' = ANY (b.author_ids)
GROUP BY l.librarian_id, l.librarian_name
ORDER BY checkout_count DESC
LIMIT 1;

\echo
-- '1' in where statement represents author id and can be changed to check for any specific author
\echo Limit n to find n least popular publishers
\echo