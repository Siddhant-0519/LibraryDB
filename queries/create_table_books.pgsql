-- table for books
CREATE TABLE books(
    ISBN VARCHAR(50) PRIMARY KEY,
    book_name varchar(100),
    author_ids INT[],
    publisher_id INT REFERENCES publisher(publisher_id),
    checkout_status BOOLEAN
);
