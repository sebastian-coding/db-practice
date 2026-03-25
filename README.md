# DB Practice

This is a basic relational DB practice.

## Required Software

- PostgreSQL 17.9
- pgAdmin 4

## Practice Exercises

In this practice, you will build a relational database from scratch, populate it with data, and then write queries to analyze it. 

**🚨 IMPORTANT: Repository Requirement**
You must save every SQL statement you write during this practice. 
1. Create a file named `practice.sql` in the root of this repository.
2. Write all your `CREATE`, `INSERT`, and `SELECT` statements in this file.
3. Use SQL comments (e.g., `-- Part 2: Table Creation` or `-- Q1: Retrieve everything`) to label each section and answer so your work can be reviewed.

### Part 1: Database Setup
1. Open pgAdmin 4.
2. Create a new database named `bookstore_practice`.
3. Open the Query Tool for your new database.

### Part 2: Table Creation (DDL)
In your `practice.sql` file, write the `CREATE TABLE` statements to build the following two tables. Execute them in pgAdmin to create the tables.

**Table 1: `authors`**
* `author_id`: Integer, auto-incrementing, Primary Key.
* `first_name`: Text/Varchar (max 50 chars), Cannot be null.
* `last_name`: Text/Varchar (max 50 chars), Cannot be null.
* `country`: Text/Varchar (max 50 chars).

**Table 2: `books`**
* `book_id`: Integer, auto-incrementing, Primary Key.
* `title`: Text/Varchar (max 100 chars), Cannot be null.
* `author_id`: Integer, Foreign Key referencing the `authors` table.
* `genre`: Text/Varchar (max 50 chars).
* `price`: Decimal/Numeric (allow up to 999.99).
* `publish_year`: Integer.

### Part 3: Data Insertion (DML)
In your `practice.sql` file, write the `INSERT INTO` statements to populate your tables with the following data. Execute them in pgAdmin.
*(Note: You must insert the authors first to satisfy the foreign key constraint!)*

**Authors Data:**
| first_name | last_name | country |
| :--- | :--- | :--- |
| Agatha | Christie | UK |
| Gabriel | Garcia Marquez | Colombia |
| Stephen | King | USA |
| Haruki | Murakami | Japan |
| Jane | Austen | UK |

**Books Data:**
| title | author_id | genre | price | publish_year |
| :--- | :--- | :--- | :--- | :--- |
| Murder on the Orient Express | 1 | Mystery | 14.99 | 1934 |
| One Hundred Years of Solitude | 2 | Magical Realism | 19.99 | 1967 |
| The Shining | 3 | Horror | 15.50 | 1977 |
| Norwegian Wood | 4 | Romance | 12.00 | 1987 |
| Pride and Prejudice | 5 | Romance | 9.99 | 1813 |
| And Then There Were None | 1 | Mystery | 11.99 | 1939 |
| Love in the Time of Cholera | 2 | Romance | 16.50 | 1985 |
| It | 3 | Horror | 22.99 | 1986 |

### Part 4: Querying (DQL)
Write SQL queries in your `practice.sql` file to answer the following questions. Test them in pgAdmin to make sure they work. **Remember to label each query with a comment (e.g., `-- Question 1`).**

**Basic Retrieval**
1. Write a query to show all data from the `books` table.
2. Write a query to show just the `title` and `price` of all books.
3. Find all books that belong to the 'Romance' genre.
4. Find all books that cost less than $15.00.
5. List all books sorted by their `publish_year` from newest to oldest.

**Intermediate Filtering**
6. Find all 'Horror' books published after 1980.
7. Find all authors whose last name starts with the letter 'M'.
8. Find all books written by authors from the 'UK' or 'Japan'.

**Relationships & Aggregation**
9. Write a query that shows the book `title` alongside the author's `first_name` and `last_name` using a `JOIN`. 
10. Find the titles of all books written by an author from 'Colombia'.
11. How many books are in the database in total?
12. What is the average price of a 'Mystery' book?

### Part 5: Submission
Once you have tested all your queries and saved them in `practice.sql`, commit your changes and push them to your remote repository.
