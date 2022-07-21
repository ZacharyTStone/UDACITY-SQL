Entity Relationship Diagrams
An entity-relationship diagram (ERD) is a common way to view data in a database. Below is the ERD for the database we will use from Parch & Posey. These diagrams help you visualize the data you are analyzing including:

The names of the tables.
The columns in each table.
The way the tables work together.
You can think of each of the boxes below as a spreadsheet.

Parch & Posey Database ERD. Explained below.
Parch & Posey Database ERD

What to Notice
In the Parch & Posey database there are five tables (essentially 5 spreadsheets):

web_events
accounts
orders
sales_reps
region
You can think of each of these tables as an individual spreadsheet. Then the columns in each spreadsheet are listed below the table name. For example, the region table has two columns: id and name. Alternatively, the web_events table has four columns.

Individual table diagram. Explained below
Individual table diagram

The "crow's foot" that connects the tables together shows us how the columns in one table relate to the columns in another table. In this first lesson, you will be learning the basics of how to work with SQL to interact with a single table. In the next lesson, you will learn more about why these connections are so important for working with SQL and relational databases.

All the data in the same column must match in terms of data type. An entire column is considered quantitative, discrete, or as some sort of string. This means if you have one row with a string in a particular column, the entire column might change to a text data type. This can be very bad if you want to do math with this column!

The key to SQL is understanding statements. A few statements include:

CREATE TABLE is a statement that creates a new table in a database.
DROP TABLE is a statement that removes a table in a database.
SELECT allows you to read data and display it. This is called a query.
The SELECT statement is the common statement used by analysts, and you will be learning all about them throughout this course!
