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

Using the WHERE statement, we can display subsets of tables based on conditions that must be met. You can also think of the WHERE command as filtering the data.

This video above shows how this can be used, and in the upcoming concepts, you will learn some common operators that are useful with the WHERE statement.

Common symbols used in WHERE statements include:

> (greater than)

< (less than)

> = (greater than or equal to)

<= (less than or equal to)

= (equal to)

!= (not equal to)

Derived Columns
Creating a new column that is a combination of existing columns is known as a derived column (or "calculated" or "computed" column). Usually, you want to give a name, or "alias," to your new column using the AS keyword.

This derived column, and its alias, are generally only temporary, existing just for the duration of your query. The next time you run a query and access this table, the new column will not be there.

If you are deriving the new column from existing columns using a mathematical expression, then these familiar mathematical operators will be useful:

- (Multiplication)

* (Addition)

- (Subtraction)
  / (Division)

Introduction to Logical Operators
In the next concepts, you will be learning about Logical Operators. Logical Operators include:

LIKE This allows you to perform operations similar to using WHERE and =, but for cases when you might not know exactly what you are looking for.

IN This allows you to perform operations similar to using WHERE and =, but for more than one condition.

NOT This is used with IN and LIKE to select all of the rows NOT LIKE or NOT IN a certain condition.

AND & BETWEEN These allow you to combine operations where all combined conditions must be true.

OR This allows you to combine operations where at least one of the combined conditions must be true.

Commands
You have already learned a lot about writing code in SQL! Let's take a moment to recap all that we have covered before moving on:

Statement How to Use It Other Details
SELECT SELECT Col1, Col2, ... Provide the columns you want
FROM FROM Table Provide the table where the columns exist
LIMIT LIMIT 10 Limits based number of rows returned
ORDER BY ORDER BY Col Orders table based on the column. Used with DESC.
WHERE WHERE Col > 5 A conditional statement to filter your results
LIKE WHERE Col LIKE '%me%' Only pulls rows where column has 'me' within the text
IN WHERE Col IN ('Y', 'N') A filter for only rows with column of 'Y' or 'N'
NOT WHERE Col NOT IN ('Y', 'N') NOT is frequently used with LIKE and IN
AND WHERE Col1 > 5 AND Col2 < 3 Filter rows where two or more conditions must be true
OR WHERE Col1 > 5 OR Col2 < 3 Filter rows where at least one condition must be true
BETWEEN WHERE Col BETWEEN 3 AND 5 Often easier syntax than using an AND
Key Terms
KeyTerm Definition
CREATE TABLE is a statement that creates a new table in a database.
DROP TABLE is a statement that removes a table in a database.
Entity-relationship diagram (ERD) A common way to view data in a database.
FROM specifies from which table(s) you want to select the columns. Notice the columns need to exist in this table.
SELECT allows you to read data and display it. This is called a query and it specifies from which table(s) you want to select the columns.
