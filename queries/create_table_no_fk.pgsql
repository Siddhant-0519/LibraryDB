-- table for students
CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    student_name varchar(100)
);

-- table for authors
CREATE TABLE authors(
    author_id SERIAL PRIMARY KEY,
    author_name varchar(100)
);

-- table for publisher
CREATE TABLE publisher(
    publisher_id SERIAL PRIMARY KEY,
    publisher_name varchar(100)
);

CREATE TABLE librarian(
    librarian_id SERIAL PRIMARY KEY,
    librarian_name varchar(100)
);