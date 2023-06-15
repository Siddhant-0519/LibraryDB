\echo --Query 3

\echo
\echo Retrieve number of books with more than 3 authors currently checked out
\echo

SELECT b.isbn, b.book_name, cardinality(b.author_ids) AS author_count
FROM Books b
WHERE cardinality(b.author_ids) >= 3
  AND EXISTS (
    SELECT NULL
    FROM Checkouts c
    WHERE c.isbn = b.isbn
  );

\echo
-- \echo Checking >=3 since due to sample data
-- \echo