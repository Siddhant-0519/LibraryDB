# Library DB

Basic Relational Database for a Library using PostgresSQL

## Installation

Install latest version of PostgresSQL from https://www.postgresql.org/download/

## UML
![Model](https://github.com/Siddhant-0519/LibraryDB/blob/main/uml.png)

## Usage

Follow the steps below in the given order to replicate:

1) Connect to the PostgresSQL local server
2) Create database 'libraryDB' using
```
\i 'Path/to/Queries/create_db.pgsql'
```
3) Connect to librarydb using
```
\c librarydb
```
4) Create tables which have no foriegn key dependencies (students,author,publisher,librarian)
```
\i 'Path/to/Queries/create_table_no_fk.pgsql'
```
5) Create tables books and checkouts using
```
\i 'Path/to/Queries/create_table_books.pgsql'
\i 'Path/to/Queries/create_table_checkouts.pgsql'
```
6) Insert Sample data using
```
\i 'Path/to/Queries/insert_sample_data.pgsql'
```
7) Verify Insertions with
```
\i 'Path/to/Queries/test_sample_insert.pgsql'
```
8) Execute any query using below(Replace 1 with query number)
```
\i 'Path/to/Queries/query1.pgsql'
```

## Resources
resources.txt indicates resources used for the above task.
