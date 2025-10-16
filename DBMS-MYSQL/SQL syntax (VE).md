 
---

###  SQL MASTER SYNTAX REFERENCE (TOP 100) – ENHANCED VISUAL EDITION


#### 🔹 1–20: Database & Basic Table Operations

| No | SQL Syntax               | Description / Concept                   | Example                                                    | Real-world Use Case              | Common Usage       | Visual Representation                                    |
| -- | ------------------------ | --------------------------------------- | ---------------------------------------------------------- | -------------------------------- | ------------------ | -------------------------------------------------------- |
| 1  | `CREATE DATABASE`        | Creates a new database.                 | `CREATE DATABASE company_db;`                              | Initializing project data store. | Setup              | `[DB Server] → (CREATE DATABASE) → [company_db created]` |
| 2  | `USE`                    | Selects which database to operate on.   | `USE company_db;`                                          | Switching to target DB.          | Session start      | `[MySQL CLI] → USE company_db → Active DB Context`       |
| 3  | `SHOW DATABASES`         | Lists all databases on the server.      | `SHOW DATABASES;`                                          | Audit available DBs.             | Admin checks       | `[Server] → Query SHOW DATABASES → [List of DBs]`        |
| 4  | `DROP DATABASE`          | Deletes an entire database permanently. | `DROP DATABASE test_db;`                                   | Removing obsolete DBs.           | Cleanup            | `[test_db] —X→ Deleted from server`                      |
| 5  | `CREATE TABLE`           | Defines a new table structure.          | `CREATE TABLE employees (id INT, name VARCHAR(50));`       | Creating schema entities.        | Core schema design | `[company_db] → CREATE TABLE → [employees]`              |
| 6  | `SHOW TABLES`            | Lists all tables in current DB.         | `SHOW TABLES;`                                             | Viewing schema structure.        | Schema overview    | `[DB] → SHOW TABLES → [list of tables]`                  |
| 7  | `DESCRIBE`               | Shows column details of a table.        | `DESCRIBE employees;`                                      | Checking schema definition.      | Schema inspection  | `[employees] → Columns → Data Types → Constraints`       |
| 8  | `DROP TABLE`             | Removes a table permanently.            | `DROP TABLE employees;`                                    | Delete old/unused tables.        | Schema cleanup     | `[employees] —X→ Removed`                                |
| 9  | `ALTER TABLE`            | Modifies an existing table structure.   | `ALTER TABLE employees ADD COLUMN salary DECIMAL(10,2);`   | Schema evolution.                | Migrations         | `[employees] → + salary column`                          |
| 10 | `RENAME TABLE`           | Changes table name.                     | `RENAME TABLE emp TO employees;`                           | Standardizing names.             | Refactoring        | `[emp] → renamed → [employees]`                          |
| 11 | `TRUNCATE TABLE`         | Deletes all rows but keeps structure.   | `TRUNCATE TABLE logs;`                                     | Clear logs quickly.              | Performance        | `[logs] → rows cleared (structure intact)`               |
| 12 | `INSERT INTO`            | Adds a new record.                      | `INSERT INTO employees VALUES (1, 'Alice');`               | Data entry.                      | CRUD               | `New row → [employees table]`                            |
| 13 | `INSERT INTO ... SELECT` | Inserts data from another table/query.  | `INSERT INTO archive SELECT * FROM sales WHERE year=2024;` | Archiving.                       | ETL jobs           | `[sales (2024)] → copied → [archive]`                    |
| 14 | `SELECT`                 | Retrieves data.                         | `SELECT * FROM employees;`                                 | Reporting, analytics.            | Most common SQL    | `[employees] → rows selected → [resultset]`              |
| 15 | `DISTINCT`               | Removes duplicates.                     | `SELECT DISTINCT city FROM customers;`                     | Unique city listing.             | Data cleaning      | `[customers] → filter unique(city)`                      |
| 16 | `WHERE`                  | Filters rows by condition.              | `SELECT * FROM employees WHERE salary > 50000;`            | Filtering data.                  | Querying           | `[employees] → filter(salary>50000)`                     |
| 17 | `AND / OR / NOT`         | Logical operators for filtering.        | `SELECT * FROM emp WHERE age>30 AND dept='HR';`            | Combine filters.                 | Conditional logic  | `[Filter1] AND [Filter2] → Result`                       |
| 18 | `BETWEEN`                | Range condition.                        | `SELECT * FROM sales WHERE amount BETWEEN 1000 AND 5000;`  | Range searches.                  | Filtering          | `[1000] < amount < [5000]`                               |
| 19 | `IN`                     | Matches values in a list.               | `SELECT * FROM emp WHERE dept IN ('HR','IT');`             | Multi-value filter.              | Querying           | `dept ∈ {HR, IT}`                                        |
| 20 | `LIKE`                   | Pattern search.                         | `SELECT * FROM emp WHERE name LIKE 'A%';`                  | Fuzzy name search.               | Text filter        | `name → pattern A% → match subset`                       |

---


---


**Part 2: 21–40 (Filtering, Sorting, Aggregation & Joins)**

| No | SQL Syntax       | Description / Concept                        | Example                                                             | Real-world Use Case          | Common Usage           | Visual Representation (Flow / Diagram)              |
| -- | ---------------- | -------------------------------------------- | ------------------------------------------------------------------- | ---------------------------- | ---------------------- | --------------------------------------------------- |
| 21 | `LIMIT`          | Restricts number of rows returned.           | `SELECT * FROM users LIMIT 10;`                                     | Paginate or preview data.    | Performance tuning     | `[Query Result] → Top 10 rows → Output`             |
| 22 | `ORDER BY`       | Sorts results in ascending/descending order. | `SELECT * FROM emp ORDER BY salary DESC;`                           | Displaying rankings.         | Reporting              | `[emp] → Sort by salary ↓ → [ordered output]`       |
| 23 | `GROUP BY`       | Groups rows sharing a value for aggregation. | `SELECT dept, AVG(salary) FROM emp GROUP BY dept;`                  | Department analysis.         | Data aggregation       | `[rows] → grouped by dept → [aggregates per group]` |
| 24 | `HAVING`         | Filters grouped results.                     | `SELECT dept, COUNT(*) FROM emp GROUP BY dept HAVING COUNT(*) > 5;` | Identifying large teams.     | Analytics              | `[Group Results] → Filter count>5 → Output`         |
| 25 | `UPDATE`         | Modifies existing records.                   | `UPDATE emp SET salary = 60000 WHERE id = 3;`                       | Salary adjustments.          | Maintenance            | `[emp] row(id=3) → salary updated`                  |
| 26 | `DELETE`         | Removes records.                             | `DELETE FROM emp WHERE id = 1;`                                     | Removing users.              | Cleanup                | `[emp] row(id=1) —X→ deleted`                       |
| 27 | `CREATE INDEX`   | Adds index to speed up queries.              | `CREATE INDEX idx_name ON emp(name);`                               | Improve search speed.        | Optimization           | `[emp.name] → indexed → faster lookup`              |
| 28 | `DROP INDEX`     | Removes an index.                            | `DROP INDEX idx_name ON emp;`                                       | Freeing disk space.          | Index tuning           | `[index idx_name] —X→ removed`                      |
| 29 | `PRIMARY KEY`    | Defines a unique row identifier.             | `id INT PRIMARY KEY`                                                | Uniqueness enforcement.      | Table design           | `[Table] → PK column → unique + not null`           |
| 30 | `FOREIGN KEY`    | Creates relationship between tables.         | `FOREIGN KEY (dept_id) REFERENCES departments(id);`                 | Linking entities.            | Relational modeling    | `[emp.dept_id] → references → [departments.id]`     |
| 31 | `UNIQUE`         | Prevents duplicate entries in a column.      | `email VARCHAR(100) UNIQUE`                                         | Avoid duplicate user emails. | Constraint             | `[users.email] → must be unique`                    |
| 32 | `CHECK`          | Validates a condition before insert/update.  | `CHECK (salary > 0)`                                                | Prevent invalid data.        | Data integrity         | `[INSERT] → check(salary>0) → allowed/denied`       |
| 33 | `DEFAULT`        | Sets default column value.                   | `status VARCHAR(10) DEFAULT 'Active';`                              | Auto default states.         | Ease of insert         | `[INSERT] (no status) → status='Active'`            |
| 34 | `AUTO_INCREMENT` | Auto-generates sequential IDs.               | `id INT AUTO_INCREMENT;`                                            | Unique key automation.       | Primary key generation | `[INSERT] → id auto+1`                              |
| 35 | `CREATE VIEW`    | Virtual table based on SELECT query.         | `CREATE VIEW high_salary AS SELECT * FROM emp WHERE salary>80000;`  | Simplify complex reports.    | Abstraction            | `[Query] → saved as [high_salary view]`             |
| 36 | `DROP VIEW`      | Deletes a view.                              | `DROP VIEW high_salary;`                                            | Remove unused views.         | Maintenance            | `[high_salary view] —X→ removed`                    |
| 37 | `ALTER VIEW`     | Modifies existing view definition.           | `ALTER VIEW high_salary AS SELECT * FROM emp WHERE salary>90000;`   | Update logic.                | Dynamic reporting      | `[view] → modified query source`                    |
| 38 | `JOIN`           | Combines rows from two or more tables.       | `SELECT e.name, d.name FROM emp e JOIN dept d ON e.dept_id=d.id;`   | Combine related info.        | Multi-table queries    | `[emp] ⇄ [dept] → joined result`                    |
| 39 | `INNER JOIN`     | Returns only matching records.               | `SELECT * FROM A INNER JOIN B ON A.id=B.id;`                        | Match-based reporting.       | Default join           | `[A∩B] → common records`                            |
| 40 | `LEFT JOIN`      | Returns all from left, matches from right.   | `SELECT * FROM A LEFT JOIN B ON A.id=B.id;`                         | Include unmatched rows.      | Audit queries          | `[A] + [matched B] → result (NULLs for no match)`   |

---

---



**Part 3: 41–60 (Advanced Joins, Functions, and Aggregations)**

| No | SQL Syntax                | Description / Concept                                      | Example                                                                    | Real-world Use Case           | Common Usage           | Visual Representation (Flow / Diagram)           |
| -- | ------------------------- | ---------------------------------------------------------- | -------------------------------------------------------------------------- | ----------------------------- | ---------------------- | ------------------------------------------------ |
| 41 | `RIGHT JOIN`              | Returns all rows from right table, matched ones from left. | `SELECT * FROM A RIGHT JOIN B ON A.id = B.id;`                             | Checking unmatched left data. | Data completeness      | `[B] + [A match] → Output (NULLs for missing A)` |
| 42 | `FULL JOIN` *(via UNION)* | Combines all rows from both tables.                        | `(SELECT * FROM A LEFT JOIN B) UNION (SELECT * FROM A RIGHT JOIN B);`      | Combining disparate data.     | Full reports           | `[A ∪ B] → all records (matches + non-matches)`  |
| 43 | `SELF JOIN`               | Joins a table to itself.                                   | `SELECT A.name, B.name FROM emp A, emp B WHERE A.mgr_id = B.id;`           | Finding reporting hierarchy.  | Organizational queries | `[emp] ↔ [emp] (self-relationship)`              |
| 44 | `CROSS JOIN`              | Produces Cartesian product of tables.                      | `SELECT * FROM A CROSS JOIN B;`                                            | Generate all combinations.    | Testing, permutations  | `[A rows] × [B rows] → all pairs`                |
| 45 | `UNION`                   | Combines results, removes duplicates.                      | `SELECT city FROM east UNION SELECT city FROM west;`                       | Merging unique datasets.      | Data integration       | `[Result1] ∪ [Result2] → unique combined result` |
| 46 | `UNION ALL`               | Combines results keeping duplicates.                       | `SELECT * FROM A UNION ALL SELECT * FROM B;`                               | Include all records.          | Raw data aggregation   | `[Result1] + [Result2] (with duplicates)`        |
| 47 | `IS NULL / IS NOT NULL`   | Checks for null values.                                    | `SELECT * FROM emp WHERE mgr_id IS NULL;`                                  | Finding incomplete records.   | Data validation        | `[Table] → filter (mgr_id=null)`                 |
| 48 | `CASE`                    | Conditional logic in queries.                              | `SELECT name, CASE WHEN salary>50000 THEN 'High' ELSE 'Low' END FROM emp;` | Categorizing salaries.        | Reports                | `salary → (if>50000)→High / else→Low`            |
| 49 | `IF()`                    | MySQL inline conditional.                                  | `SELECT IF(status='A','Active','Inactive') FROM users;`                    | Dynamic field output.         | Simple logic           | `status → Active/Inactive`                       |
| 50 | `COALESCE()`              | Returns first non-null value.                              | `SELECT COALESCE(phone,email) FROM users;`                                 | Fallback values.              | Handling nulls         | `[phone ?] else [email]`                         |
| 51 | `NULLIF()`                | Returns NULL if two values are equal.                      | `SELECT NULLIF(a,b);`                                                      | Avoiding division by zero.    | Safe arithmetic        | `(a==b)→NULL else a`                             |
| 52 | `NOW()`                   | Returns current date & time.                               | `SELECT NOW();`                                                            | Logging timestamps.           | Time tracking          | `[System Clock] → current datetime`              |
| 53 | `CURDATE()`               | Returns current date only.                                 | `SELECT CURDATE();`                                                        | Record creation date.         | Default timestamps     | `[System Date] → YYYY-MM-DD`                     |
| 54 | `DATE_FORMAT()`           | Formats date output.                                       | `SELECT DATE_FORMAT(NOW(),'%Y-%m-%d');`                                    | Reporting, UI formatting.     | Presentation           | `[2025-10-16 10:00] → '2025-10-16'`              |
| 55 | `DATEDIFF()`              | Difference between two dates (in days).                    | `SELECT DATEDIFF(end_date, start_date);`                                   | Calculating durations.        | Analysis               | `[end_date - start_date] → days`                 |
| 56 | `SUBSTRING()`             | Extracts substring from text.                              | `SELECT SUBSTRING(name,1,3);`                                              | Parsing codes/names.          | Text manipulation      | `[string] → [subsection(1,3)]`                   |
| 57 | `CONCAT()`                | Joins multiple strings.                                    | `SELECT CONCAT(fname,' ',lname);`                                          | Creating full names.          | Text output            | `[fname] + ' ' + [lname] → fullname`             |
| 58 | `LENGTH()`                | Finds length of string.                                    | `SELECT LENGTH(name);`                                                     | Validation & limits.          | Data checks            | `[string] → [length in chars]`                   |
| 59 | `REPLACE()`               | Replaces substring in text.                                | `SELECT REPLACE(name,'Mr.','');`                                           | Cleaning prefixes/titles.     | Data cleanup           | `[text] ('Mr.'→'') → cleaned text`               |
| 60 | `ROUND()`                 | Rounds numeric values.                                     | `SELECT ROUND(salary,2);`                                                  | Monetary rounding.            | Finance operations     | `[1234.567] → [1234.57]`                         |

---


---


**Part 4: 61–80 (Aggregations, Transactions & Admin Operations)**

| No | SQL Syntax         | Description / Concept                   | Example                                                | Real-world Use Case             | Common Usage         | Visual Representation (Flow / Diagram)      |
| -- | ------------------ | --------------------------------------- | ------------------------------------------------------ | ------------------------------- | -------------------- | ------------------------------------------- |
| 61 | `AVG()`            | Calculates average of numeric column.   | `SELECT AVG(salary) FROM emp;`                         | Average salary reporting.       | Analytics            | `[salary₁ + salary₂ + …]/n → avg value`     |
| 62 | `SUM()`            | Adds up values in a column.             | `SELECT SUM(amount) FROM sales;`                       | Revenue totals.                 | Financial reports    | `[row₁.amount] + [row₂.amount] → sum`       |
| 63 | `MIN()`            | Finds lowest value.                     | `SELECT MIN(price) FROM products;`                     | Cheapest product lookup.        | Summary metrics      | `prices → sort↑ → first value`              |
| 64 | `MAX()`            | Finds highest value.                    | `SELECT MAX(price) FROM products;`                     | Most expensive item.            | Summary metrics      | `prices → sort↓ → first value`              |
| 65 | `COUNT()`          | Counts rows returned.                   | `SELECT COUNT(*) FROM emp;`                            | Employee headcount.             | Everyday queries     | `rows → tally → count`                      |
| 66 | `IFNULL()`         | Replaces NULL with given value.         | `SELECT IFNULL(phone,'N/A') FROM users;`               | Display fallback values.        | Data cleanup         | `NULL? → 'N/A' : value`                     |
| 67 | `EXISTS`           | Checks if subquery returns rows.        | `SELECT * FROM emp WHERE EXISTS (SELECT 1 FROM dept);` | Validate related data presence. | Subquery logic       | `subquery has rows? → true/false`           |
| 68 | `ANY / ALL`        | Compares value with set from subquery.  | `salary > ALL (SELECT salary FROM dept)`               | Compare department salaries.    | Complex filters      | `value vs {set} → match rule`               |
| 69 | `CREATE USER`      | Creates new MySQL user.                 | `CREATE USER 'bob'@'localhost' IDENTIFIED BY 'pwd';`   | Onboard new DB users.           | Admin setup          | `[MySQL] + username → new account`          |
| 70 | `GRANT`            | Assigns privileges to a user.           | `GRANT SELECT ON db.* TO 'bob';`                       | Grant read-only access.         | Security             | `Admin → GRANT → user privileges`           |
| 71 | `REVOKE`           | Removes user privileges.                | `REVOKE ALL PRIVILEGES ON db.* FROM 'bob';`            | Disable access.                 | Security revocation  | `user privileges —X→ revoked`               |
| 72 | `SHOW GRANTS`      | Lists permissions of a user.            | `SHOW GRANTS FOR 'bob';`                               | Audit access.                   | Admin auditing       | `[user] → display privilege list`           |
| 73 | `COMMIT`           | Saves transaction changes permanently.  | `COMMIT;`                                              | Confirm bank transfer.          | Transactional safety | `BEGIN → DML → COMMIT → saved`              |
| 74 | `ROLLBACK`         | Reverts uncommitted transaction.        | `ROLLBACK;`                                            | Undo erroneous update.          | Error recovery       | `BEGIN → DML → ROLLBACK → original state`   |
| 75 | `SAVEPOINT`        | Sets a partial rollback marker.         | `SAVEPOINT before_delete;`                             | Complex transaction control.    | Partial reversal     | `TXN flow → [Savepoint] → rollback to here` |
| 76 | `LOCK TABLES`      | Locks tables during transaction.        | `LOCK TABLES emp WRITE;`                               | Prevent write conflicts.        | Concurrency control  | `[emp] 🔒 → no other writes`                |
| 77 | `UNLOCK TABLES`    | Releases locked tables.                 | `UNLOCK TABLES;`                                       | Resume multi-user access.       | Post-transaction     | `[emp] 🔓 → available`                      |
| 78 | `SHOW PROCESSLIST` | Displays active connections & queries.  | `SHOW PROCESSLIST;`                                    | Monitor slow queries.           | Performance tuning   | `[Server] → active query table`             |
| 79 | `EXPLAIN`          | Shows query execution plan.             | `EXPLAIN SELECT * FROM emp;`                           | Optimize complex queries.       | Diagnostics          | `SELECT → plan (table, index, cost)`        |
| 80 | `ANALYZE TABLE`    | Updates table statistics for optimizer. | `ANALYZE TABLE emp;`                                   | Improve query plans.            | Maintenance          | `[emp] → analyze → updated stats`           |

---

---



**Part 5: 81–100 (Optimization, Stored Programs, Triggers & JSON)**

| No  | SQL Syntax           | Description / Concept                          | Example                                                                                   | Real-world Use Case          | Common Usage        | Visual Representation (Flow / Diagram)           |
| --- | -------------------- | ---------------------------------------------- | ----------------------------------------------------------------------------------------- | ---------------------------- | ------------------- | ------------------------------------------------ |
| 81  | `OPTIMIZE TABLE`     | Defragments and reclaims space for a table.    | `OPTIMIZE TABLE emp;`                                                                     | Speed up after many deletes. | Maintenance         | `[emp] → compact data pages → faster access`     |
| 82  | `SHOW STATUS`        | Displays server performance metrics.           | `SHOW STATUS LIKE 'Threads%';`                                                            | Monitoring server load.      | DBA checks          | `[Server] → status variables (table)`            |
| 83  | `SHOW VARIABLES`     | Shows system configuration values.             | `SHOW VARIABLES LIKE 'max_connections';`                                                  | Config audit.                | Tuning              | `[System vars] → output list`                    |
| 84  | `SET`                | Sets a session/global variable.                | `SET @limit = 10;`                                                                        | Dynamic query controls.      | Scripting           | `@var := value → used later in query`            |
| 85  | `PREPARE`            | Defines a dynamic SQL statement.               | `PREPARE stmt FROM 'SELECT * FROM emp WHERE id=?';`                                       | Parameterized execution.     | Automation          | `[SQL string] → compiled as prepared stmt`       |
| 86  | `EXECUTE`            | Runs a prepared statement.                     | `EXECUTE stmt USING @id;`                                                                 | Dynamic data fetching.       | Reusable queries    | `[prepared stmt] + @params → result`             |
| 87  | `DEALLOCATE PREPARE` | Releases prepared statement memory.            | `DEALLOCATE PREPARE stmt;`                                                                | Memory cleanup.              | Session end         | `[stmt] —X→ freed`                               |
| 88  | `CREATE PROCEDURE`   | Defines a stored procedure (block of SQL).     | `CREATE PROCEDURE getEmp() BEGIN SELECT * FROM emp; END;`                                 | Reusable business logic.     | Back-end automation | `[Procedure name] → stored logic block`          |
| 89  | `CALL`               | Invokes a stored procedure.                    | `CALL getEmp();`                                                                          | Execute routine tasks.       | Reusability         | `[CALL → procedure] → resultset`                 |
| 90  | `DROP PROCEDURE`     | Deletes a stored procedure.                    | `DROP PROCEDURE getEmp;`                                                                  | Remove obsolete routines.    | Maintenance         | `[procedure] —X→ removed`                        |
| 91  | `CREATE FUNCTION`    | Creates user-defined function (return value).  | `CREATE FUNCTION calcTax(s DECIMAL) RETURNS DECIMAL RETURN s*0.1;`                        | Reusable formulas.           | Custom logic        | `input → function logic → output`                |
| 92  | `CREATE TRIGGER`     | Executes action on insert/update/delete event. | `CREATE TRIGGER before_insert BEFORE INSERT ON emp FOR EACH ROW SET NEW.created = NOW();` | Auto-timestamp rows.         | Automation          | `[INSERT event] → trigger fires → set timestamp` |
| 93  | `DROP TRIGGER`       | Removes an existing trigger.                   | `DROP TRIGGER before_insert;`                                                             | Disable automation.          | Maintenance         | `[trigger] —X→ deleted`                          |
| 94  | `CREATE EVENT`       | Schedules a task for automatic execution.      | `CREATE EVENT clean_up ON SCHEDULE EVERY 1 DAY DO DELETE FROM logs;`                      | Nightly log cleanup.         | Scheduling          | `[Scheduler] → daily exec → DELETE logs`         |
| 95  | `SHOW EVENTS`        | Lists existing scheduled events.               | `SHOW EVENTS;`                                                                            | Monitor automation jobs.     | DBA overview        | `[Event Scheduler] → event list`                 |
| 96  | `JSON_EXTRACT()`     | Retrieves a key from a JSON document.          | `SELECT JSON_EXTRACT(info,'$.email');`                                                    | Query JSON columns.          | Modern data         | `{info:{email:'x'}} → $.email → 'value'`         |
| 97  | `GROUP_CONCAT()`     | Concatenates grouped values into string.       | `SELECT dept, GROUP_CONCAT(name) FROM emp GROUP BY dept;`                                 | Department member lists.     | Reporting           | `[group] → names joined by ','`                  |
| 98  | `REGEXP`             | Uses regular expressions to match patterns.    | `SELECT * FROM users WHERE email REGEXP '@gmail.com$';`                                   | Filter by patterned text.    | Validation          | `email ~ /@gmail.com$/ → match`                  |
| 99  | `ALTER USER`         | Modifies user authentication details.          | `ALTER USER 'bob'@'localhost' IDENTIFIED BY 'newpwd';`                                    | Reset passwords.             | Admin task          | `[user record] → password updated`               |
| 100 | `SHOW ERRORS`        | Displays last SQL errors encountered.          | `SHOW ERRORS;`                                                                            | Debug DDL failures.          | Developer debugging | `[Last operation] → error log table`             |

---


---




