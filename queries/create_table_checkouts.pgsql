-- table for checkouts
CREATE TABLE checkouts(
    checkout_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    librarian_id INT REFERENCES librarian(librarian_id),
    ISBN varchar(50) REFERENCES books(ISBN),
    checkout_date DATE
);  