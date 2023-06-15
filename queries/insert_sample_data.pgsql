--Insert Sample Values in tables

--Insert Sample students
INSERT INTO students (student_name)
VALUES
('Siddhant'),
('Chris'),
('Pascal'),
('Moshi'),
('Thulani');

--Insert Sample publisher
INSERT INTO authors (author_name)
VALUES
('Author 1'),
('Author 2'),
('Author 3'),
('Author 4'),
('Author 5');

--Insert Sample publisher
INSERT INTO publisher (publisher_name)
VALUES
('Publisher 1'),
('Publisher 2'),
('Publisher 3'),
('Publisher 4'),
('Publisher 5');

--Insert Sample librarian
INSERT INTO librarian (librarian_name)
VALUES
('Librarian 1'),
('Librarian 2'),
('Librarian 3'),
('Librarian 4'),
('Librarian 5');

--Insert Sample books
INSERT INTO books (isbn,book_name,author_ids,publisher_id,checkout_status)
VALUES
('ISBN 1','Book 1','{1,2,3}',1,TRUE),
('ISBN 2','Book 2','{4,5}',2,FALSE),
('ISBN 3','Book 3','{3,4}',1,TRUE),
('ISBN 4','Book 4','{1}',3,TRUE),
('ISBN 5','Book 5','{2}',3,FALSE);

--Insert Sample checkouts
INSERT INTO checkouts (student_id,isbn,checkout_date,librarian_id)
VALUES
('1','ISBN 1',CURRENT_DATE,1),
('2','ISBN 3',CURRENT_DATE,1),
('3','ISBN 4',CURRENT_DATE-INTERVAL'1 MONTH',3),
('1','ISBN 2',CURRENT_DATE - INTERVAL '2 months',2),
('2','ISBN 4',CURRENT_DATE,1);