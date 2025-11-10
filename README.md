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
Aggregate functions are powerful tools that perform calculations across multiple rows and return a single value ; especially when combined with GROUP BY and HAVING clause

🔍 Key Learnings:
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


