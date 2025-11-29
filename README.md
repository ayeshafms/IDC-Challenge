## IDC 21 DAYS SQL CHALLENGE
SPONSORED BY @DPDzero

### 📘OBJECTIVE OF THE CHALLENGE
- Stay consistent and track my learning publicly.  
Each day, I’ll upload my solutions, notes, and key learnings.

Welcome to my SQL learning journey!
This repository documents my progress as I complete daily SQL cahlleneges- to improve my query skills, analytical thinking and problem solving skills.

- Programming Language: SQL (Structured Query Language)
- Database: MySQL

### KEY TAKEWAY
#### Day 1:
- How to import dataset in MySQL
- How to retrieve data using the SELECT statement
- How to retrieve specific column using SELECT statement
- How to find unique values with DISTINCT

 #### DAY 2
- Filtering data using the WHERE clause
- Combining conditions in a WHERE clause using comparison and logical operators
- Filtering data using comparison operators such as !=, >, <, <>, etc..
- Filtering data using logical operators such as AND, OR, NOT, BETWEEN, IN, etc..

#### DAY 3
- The ORDER BY clause is used to sort the result set in ascending or descending order.
- By default, ORDER BY sorts the data in ascending order (ASC).
- To sort the data in descending order, use the DESC keyword.
- You can also sort by multiple columns — the data is first sorted by the first column, then by the second, and so on.

#### DAY 4
- The LIMIT clause returns the specified number of rows.
- The OFFSET clause skips the specified number of rows and returns the remaining rows
- When used together with the ORDER BY clause, LIMIT and OFFSET help retrieve a specific range of data — such as the top or bottom records in a dataset
- Execution Order:
  FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT

#### DAY 5
+ Aggregate functions are powerful tools that perform calculations across multiple rows and return a single value ; especially when combined with GROUP BY and HAVING clause
- Aggregate functions ignore null values except for COUNT()
- The most commonly used SQL aggregate functions are:
  + MIN() -> smallest value
  + MAX() -> largest value
  + COUNT() -> counts number of rows
  + SUM() -> total of numeric values
  + AVG() -> average of numeric values
- Execution Order:
  FROM → AGGREGATES → SELECT

#### DAY 6
- GROUP BY groups rows into categories
- All the aggregations are then calculated based on these categories
- When combined with ORDER BY, it helps in sorting these categories in ASC/DESC order
- Since aliases are created in the SELECT statement, they cannot be used in the GROUP BY clause
  
#### DAY 7
- HAVING filters groups created by GROUP BY, similar to how WHERE filters rows.
- WHERE: Filters rows before grouping 
- HAVING: Filters groups after grouping 
- WHERE: Cannot use aggregate functions 
- HAVING: Can use aggregate functions
- Execution Order:
FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT

#### DAY 8
- Learned the types of SQL functions and their use cases
- Explored categories of built-in functions
- Practiced essential string functions such as CONCAT, TRIM, LENGTH, REPLACE, and REVERSE
- Understood how to perform case-insensitive comparisons effectively
- Understood how to combine string functions with CASE for complex logic

#### DAY 9
- Date functions are useful when working with dates and time in SQL.
- They’re especially powerful for time-based analysis - like tracking durations, trends, or intervals.
- Learned date functions such as DATEADD(), DATEDIFF(), CURDATE(), YEAR(), MONTH(), DATE() etc..

#### DAY 10
- A CASE expression adds conditional logic to your queries - just like using IF-THEN-ELSE in programming
- It allows you to return different values based on specific conditions
- All possible results must have the same data type (Eg: all text or all numbers)
- SQL evaluates the conditions from top to bottom, so the order of conditions matters
  
#### DAY 11
- DISTINCT removes duplicate rows from your result set, returning only unique values
- Use COUNT(DISTINCT column) to count unique values within groups
- DISTINCT with NULL: NULL values are considered equal, so only one NULL appears
  
#### DAY 12
- NULL represents missing or unknown data in SQL. It’s not zero, not empty string, but the absence of a value
- Empty string (’’) is NOT NULL - they’re different!
- Some of the null functions include IS NULL, IS NOT NULL, COALESCE, IF NULL etc..
  
#### DAY 13
- Having multiple tables in a database is highly necessary, as it solves issues such as data redundancy, update anomalies, deletion anomalies and unorganized data
- These tables can then be combined using JOINS
- JOINS combines rows from two or more tables into a single table based on common attributes (columns)
- INNER JOIN returns only the rows that have matching values in both tables

#### DAY 14
- INNER JOIN: Only matching rows from both tables 
- LEFT JOIN: All rows from left table + matches from right (NULL if no match) - RIGHT JOIN: All rows from right table + matches from left (NULL if no match)
- Use COALESCE with LEFT JOIN to handle NULLs
- Find non-matching rows using WHERE column IS NULL

#### DAY 15
- Multiple joins combine data from three or more tables in a single query
- Joins are evaluated left to right 
- Results are cumulative (each join adds to the result set) 
- Mix INNER and LEFT joins as needed

#### DAY 16
- Subqueries are queries nested inside other queries. In WHERE clauses, they filter based on results from another query
- Single value: Returns one value (use =, <, >, etc.) 
- Multiple values: Returns multiple values (use IN, NOT IN)
- Test subqueries independently first to verify they return expected results

#### DAY 17
- Subqueries can also appear in SELECT (as calculated columns) and FROM (as derived tables).
- Subquery in SELECT must return single value
- Correlated subqueries in SELECT execute once per row (can be slow)

####DAY 18
- UNION combines results from multiple SELECT statements into a single result set.
- UNION: Removes duplicate rows (slower) 
- UNION ALL: Keeps all rows including duplicates (faster)
- Use UNION ALL when possible - it’s faster since it doesn’t check for duplicates
- Column names from first query are used when UNION is used.

#### DAY 19
- Window functions perform calculations across rows related to the current row, without collapsing results like GROUP BY.
- ROW_NUMBER(): Sequential numbering (1, 2, 3, 4…) 
- RANK(): Same values get same rank, gaps after ties (1, 2, 2, 4…) 
- DENSE_RANK(): Same values get same rank, no gaps (1, 2, 2, 3…)
  
#### DAY 20
- Running and Rolling Totals aggregate sequence of numbers and the aggregation is updated each time a number is added
- Running Total aggregates all values from beginning up to the current point without dropping off older data
- Rolling Total aggregates all values withing a fixed time window (E.g.: 30 Days). As new data is added, the oldest data point will be dropped
  
#### DAY 21
- A Common Table Expression (CTE) temporary result set
- WITH and AS clause are used in combination to create a CTE
- Multiple CTE queries can be used within a single query
- CTEs vs Subqueries: 
 CTEs: More readable, can be referenced multiple times 
 Subqueries: More concise for simple cases

#### IDC CAPSTONE PROJECT - "WHO KILLED THE CEO?"
Wrapped up the IDC SQL 21-Days Challenge by completing a capstone project titled - “Who Killed the CEO?”

In this project, I was tasked with solving a fictional murder case entirely through SQL. All the clues were hidden across multiple company databases, including:
- Keycard logs
- Phone call records
- Employee alibis
- Evidence discovered in different rooms

By analyzing each dataset, linking facts across tables and uncovering patterns, I was able to narrow down suspects and identify who killed the CEO

It was a fun, challenging, and very practical way to apply SQL skills - especially joins, filtering, logical and analytical thinking.
