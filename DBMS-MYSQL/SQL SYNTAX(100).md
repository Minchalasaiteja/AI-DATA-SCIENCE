**complete “SQL Master Syntax Reference (100)”** 

It includes:

* 🔹 Syntax
* 🔹 Description / Concept
* 🔹 Example
* 🔹 Real-world Use Case
* 🔹 Most Common Usage Context

---

##  SQL MASTER SYNTAX TABLE (TOP 100) – MySQL / DBMS

| No  | SQL Syntax               | Description / Concept                 | Example                                                                                | Real-world Use Case             | Common Usage            |
| --- | ------------------------ | ------------------------------------- | -------------------------------------------------------------------------------------- | ------------------------------- | ----------------------- |
| 1   | `CREATE DATABASE`        | Creates a new database.               | `CREATE DATABASE company_db;`                                                          | Setting up a new project.       | Database initialization |
| 2   | `USE`                    | Selects which database to operate on. | `USE company_db;`                                                                      | Switching between environments. | Session management      |
| 3   | `SHOW DATABASES`         | Lists all databases on the server.    | `SHOW DATABASES;`                                                                      | Checking available DBs.         | Admin inspection        |
| 4   | `DROP DATABASE`          | Deletes a database permanently.       | `DROP DATABASE test_db;`                                                               | Removing test databases.        | Cleanup                 |
| 5   | `CREATE TABLE`           | Defines table structure.              | `CREATE TABLE employees (id INT, name VARCHAR(50));`                                   | Create schema entities.         | Core schema design      |
| 6   | `DESCRIBE`               | Shows structure of a table.           | `DESCRIBE employees;`                                                                  | Checking columns and types.     | Debugging               |
| 7   | `SHOW TABLES`            | Lists all tables in current DB.       | `SHOW TABLES;`                                                                         | Inventory of schema.            | Admin operations        |
| 8   | `DROP TABLE`             | Deletes a table permanently.          | `DROP TABLE employees;`                                                                | Remove obsolete tables.         | Schema cleanup          |
| 9   | `ALTER TABLE`            | Modifies table structure.             | `ALTER TABLE employees ADD COLUMN salary DECIMAL(10,2);`                               | Add new attributes.             | Schema migration        |
| 10  | `RENAME TABLE`           | Renames an existing table.            | `RENAME TABLE old TO new;`                                                             | Versioning tables.              | Data migration          |
| 11  | `TRUNCATE TABLE`         | Deletes all rows but keeps structure. | `TRUNCATE TABLE logs;`                                                                 | Clearing logs quickly.          | Performance cleanup     |
| 12  | `INSERT INTO`            | Adds new records.                     | `INSERT INTO employees VALUES (1, 'Alice');`                                           | Data entry.                     | CRUD operation          |
| 13  | `INSERT INTO ... SELECT` | Inserts data from another query.      | `INSERT INTO archive SELECT * FROM orders WHERE year=2024;`                            | Archiving data.                 | ETL                     |
| 14  | `SELECT`                 | Retrieves data from tables.           | `SELECT * FROM employees;`                                                             | Reports, dashboards.            | Core querying           |
| 15  | `DISTINCT`               | Removes duplicates.                   | `SELECT DISTINCT city FROM customers;`                                                 | Unique lists.                   | Data cleaning           |
| 16  | `WHERE`                  | Filters rows by condition.            | `SELECT * FROM emp WHERE salary>50000;`                                                | Data filtering.                 | Daily queries           |
| 17  | `AND / OR / NOT`         | Logical conditions.                   | `SELECT * FROM emp WHERE age>30 AND dept='HR';`                                        | Combine filters.                | Query refinement        |
| 18  | `BETWEEN`                | Range filtering.                      | `SELECT * FROM sales WHERE amount BETWEEN 1000 AND 5000;`                              | Price range searches.           | Data analysis           |
| 19  | `IN`                     | Checks values within a list.          | `SELECT * FROM emp WHERE dept IN ('HR','IT');`                                         | Multi-department lookup.        | Filtering               |
| 20  | `LIKE`                   | Pattern matching.                     | `SELECT * FROM emp WHERE name LIKE 'A%';`                                              | Searching names.                | Fuzzy matching          |
| 21  | `LIMIT`                  | Restricts number of rows.             | `SELECT * FROM users LIMIT 10;`                                                        | Pagination.                     | Performance             |
| 22  | `ORDER BY`               | Sorts query results.                  | `SELECT * FROM emp ORDER BY salary DESC;`                                              | Ranking employees.              | Reporting               |
| 23  | `GROUP BY`               | Aggregates similar rows.              | `SELECT dept, AVG(salary) FROM emp GROUP BY dept;`                                     | Department analysis.            | Data aggregation        |
| 24  | `HAVING`                 | Filter after aggregation.             | `SELECT dept, COUNT(*) FROM emp GROUP BY dept HAVING COUNT(*)>5;`                      | Large team detection.           | Analytics               |
| 25  | `UPDATE`                 | Modifies existing data.               | `UPDATE emp SET salary=60000 WHERE id=3;`                                              | Salary updates.                 | Maintenance             |
| 26  | `DELETE`                 | Deletes rows from a table.            | `DELETE FROM emp WHERE id=1;`                                                          | Removing user data.             | Cleanup                 |
| 27  | `CREATE INDEX`           | Improves query speed.                 | `CREATE INDEX idx_name ON emp(name);`                                                  | Optimize large tables.          | Performance tuning      |
| 28  | `DROP INDEX`             | Removes index.                        | `DROP INDEX idx_name ON emp;`                                                          | Reclaim space.                  | Index management        |
| 29  | `PRIMARY KEY`            | Unique identifier per row.            | `id INT PRIMARY KEY`                                                                   | Ensures uniqueness.             | Table design            |
| 30  | `FOREIGN KEY`            | Links related tables.                 | `FOREIGN KEY (dept_id) REFERENCES departments(id)`                                     | Data integrity.                 | Relationship modeling   |
| 31  | `UNIQUE`                 | Ensures column values are unique.     | `email VARCHAR(100) UNIQUE`                                                            | Avoid duplicate users.          | Data validation         |
| 32  | `CHECK`                  | Enforces constraint.                  | `CHECK (salary > 0)`                                                                   | Prevent invalid data.           | Validation              |
| 33  | `DEFAULT`                | Sets default column value.            | `status VARCHAR(10) DEFAULT 'Active'`                                                  | Auto values.                    | Ease of insert          |
| 34  | `AUTO_INCREMENT`         | Generates sequential IDs.             | `id INT AUTO_INCREMENT`                                                                | Unique IDs.                     | Primary key use         |
| 35  | `CREATE VIEW`            | Virtual table based on a query.       | `CREATE VIEW high_salary AS SELECT * FROM emp WHERE salary>80000;`                     | Simplify complex queries.       | Reusable queries        |
| 36  | `DROP VIEW`              | Deletes a view.                       | `DROP VIEW high_salary;`                                                               | Remove outdated views.          | Maintenance             |
| 37  | `ALTER VIEW`             | Modifies a view.                      | `ALTER VIEW high_salary AS SELECT * FROM emp WHERE salary>90000;`                      | Update logic.                   | Dynamic views           |
| 38  | `JOIN`                   | Combines data from tables.            | `SELECT e.name, d.name FROM emp e JOIN dept d ON e.dept_id=d.id;`                      | Employee-department link.       | Reporting               |
| 39  | `INNER JOIN`             | Only matching records.                | `SELECT * FROM A INNER JOIN B ON A.id=B.id;`                                           | Related data queries.           | Default join            |
| 40  | `LEFT JOIN`              | All from left, matched from right.    | `SELECT * FROM A LEFT JOIN B ON A.id=B.id;`                                            | Show missing matches.           | Audit queries           |
| 41  | `RIGHT JOIN`             | All from right table.                 | `SELECT * FROM A RIGHT JOIN B ON A.id=B.id;`                                           | Incomplete data checks.         | Data validation         |
| 42  | `FULL JOIN`              | Combines all records.                 | (MySQL via UNION)                                                                      | Reporting all data.             | Complete analysis       |
| 43  | `SELF JOIN`              | Join table with itself.               | `SELECT A.name, B.name FROM emp A, emp B WHERE A.mgr_id=B.id;`                         | Hierarchies.                    | Org chart               |
| 44  | `CROSS JOIN`             | Cartesian product.                    | `SELECT * FROM A CROSS JOIN B;`                                                        | Generate combinations.          | Testing                 |
| 45  | `UNION`                  | Combines results removing duplicates. | `SELECT city FROM c1 UNION SELECT city FROM c2;`                                       | Merge datasets.                 | Data integration        |
| 46  | `UNION ALL`              | Combines with duplicates.             | `SELECT * FROM a UNION ALL SELECT * FROM b;`                                           | Include all data.               | Aggregation             |
| 47  | `IS NULL / IS NOT NULL`  | Checks for nulls.                     | `SELECT * FROM emp WHERE mgr_id IS NULL;`                                              | Find incomplete data.           | Data checks             |
| 48  | `CASE`                   | Conditional logic in SQL.             | `SELECT name, CASE WHEN salary>50000 THEN 'High' ELSE 'Low' END FROM emp;`             | Categorizing.                   | Data classification     |
| 49  | `IF()`                   | MySQL inline condition.               | `SELECT IF(status='A','Active','Inactive') FROM users;`                                | Quick logic.                    | Reports                 |
| 50  | `COALESCE()`             | Returns first non-null.               | `SELECT COALESCE(phone,email) FROM users;`                                             | Handling missing data.          | Data cleanup            |
| 51  | `NULLIF()`               | Returns NULL if equal.                | `SELECT NULLIF(a,b);`                                                                  | Avoid division errors.          | Safe calc               |
| 52  | `NOW()`                  | Current timestamp.                    | `SELECT NOW();`                                                                        | Logging events.                 | Time stamps             |
| 53  | `CURDATE()`              | Current date.                         | `SELECT CURDATE();`                                                                    | Date fields.                    | Date default            |
| 54  | `DATE_FORMAT()`          | Format date.                          | `SELECT DATE_FORMAT(NOW(),'%Y-%m-%d');`                                                | Reports.                        | Formatting              |
| 55  | `DATEDIFF()`             | Difference between two dates.         | `SELECT DATEDIFF(end,start);`                                                          | Days open.                      | Metrics                 |
| 56  | `SUBSTRING()`            | Extract substring.                    | `SELECT SUBSTRING(name,1,3);`                                                          | Parsing codes.                  | Text ops                |
| 57  | `CONCAT()`               | Combine strings.                      | `SELECT CONCAT(fname,' ',lname);`                                                      | Full names.                     | Output formatting       |
| 58  | `LENGTH()`               | Length of string.                     | `SELECT LENGTH(name);`                                                                 | Validate fields.                | Data quality            |
| 59  | `REPLACE()`              | Replace substring.                    | `SELECT REPLACE(name,'Mr.','');`                                                       | Cleanup titles.                 | Data cleaning           |
| 60  | `ROUND()`                | Rounds numbers.                       | `SELECT ROUND(salary,2);`                                                              | Financial data.                 | Accuracy                |
| 61  | `AVG()`                  | Average value.                        | `SELECT AVG(salary) FROM emp;`                                                         | Pay analysis.                   | Aggregation             |
| 62  | `SUM()`                  | Adds values.                          | `SELECT SUM(amount) FROM sales;`                                                       | Revenue reports.                | Totals                  |
| 63  | `MIN()`                  | Smallest value.                       | `SELECT MIN(price) FROM products;`                                                     | Cheapest item.                  | Summary                 |
| 64  | `MAX()`                  | Largest value.                        | `SELECT MAX(price) FROM products;`                                                     | Most expensive item.            | Summary                 |
| 65  | `COUNT()`                | Counts rows.                          | `SELECT COUNT(*) FROM emp;`                                                            | Headcount.                      | Analytics               |
| 66  | `IFNULL()`               | Replace nulls.                        | `SELECT IFNULL(phone,'N/A');`                                                          | Handle blanks.                  | Output control          |
| 67  | `EXISTS`                 | Checks if subquery returns results.   | `SELECT * FROM emp WHERE EXISTS (SELECT * FROM dept);`                                 | Verify data presence.           | Validation              |
| 68  | `ANY / ALL`              | Compare subquery results.             | `salary > ALL (SELECT salary FROM dept)`                                               | Comparative analysis.           | Complex queries         |
| 69  | `CREATE USER`            | Create new MySQL user.                | `CREATE USER 'bob'@'localhost' IDENTIFIED BY 'pwd';`                                   | User management.                | Admin tasks             |
| 70  | `GRANT`                  | Gives privileges.                     | `GRANT SELECT ON db.* TO 'bob';`                                                       | Secure access.                  | Permissions             |
| 71  | `REVOKE`                 | Removes privileges.                   | `REVOKE ALL PRIVILEGES ON db.* FROM 'bob';`                                            | Security tightening.            | Access control          |
| 72  | `SHOW GRANTS`            | Lists user privileges.                | `SHOW GRANTS FOR 'bob';`                                                               | Review permissions.             | Auditing                |
| 73  | `COMMIT`                 | Saves transaction changes.            | `COMMIT;`                                                                              | Bank transfer completion.       | Transactions            |
| 74  | `ROLLBACK`               | Reverts transaction.                  | `ROLLBACK;`                                                                            | Undo wrong updates.             | Safety                  |
| 75  | `SAVEPOINT`              | Marks a transaction point.            | `SAVEPOINT before_delete;`                                                             | Partial rollback.               | Advanced transactions   |
| 76  | `LOCK TABLE`             | Locks table during transaction.       | `LOCK TABLE emp WRITE;`                                                                | Prevent conflicts.              | Concurrency control     |
| 77  | `UNLOCK TABLES`          | Unlocks tables.                       | `UNLOCK TABLES;`                                                                       | Resume access.                  | Transaction control     |
| 78  | `SHOW PROCESSLIST`       | Displays active queries.              | `SHOW PROCESSLIST;`                                                                    | Identify slow queries.          | Performance tuning      |
| 79  | `EXPLAIN`                | Shows query execution plan.           | `EXPLAIN SELECT * FROM emp;`                                                           | Optimize queries.               | Debugging               |
| 80  | `ANALYZE TABLE`          | Updates table statistics.             | `ANALYZE TABLE emp;`                                                                   | Maintain optimizer accuracy.    | Maintenance             |
| 81  | `OPTIMIZE TABLE`         | Defrag tables.                        | `OPTIMIZE TABLE emp;`                                                                  | Reclaim space.                  | Performance             |
| 82  | `SHOW STATUS`            | Displays server status.               | `SHOW STATUS LIKE 'Threads%';`                                                         | Server monitoring.              | Admin                   |
| 83  | `SHOW VARIABLES`         | Shows system variables.               | `SHOW VARIABLES LIKE 'max_connections';`                                               | Config checks.                  | Tuning                  |
| 84  | `SET`                    | Sets variable value.                  | `SET @count=10;`                                                                       | Session variable.               | Dynamic control         |
| 85  | `PREPARE`                | Prepares a statement.                 | `PREPARE stmt FROM 'SELECT * FROM emp WHERE id=?';`                                    | Dynamic SQL.                    | Automation              |
| 86  | `EXECUTE`                | Runs a prepared statement.            | `EXECUTE stmt USING @id;`                                                              | Reusable queries.               | Scripting               |
| 87  | `DEALLOCATE PREPARE`     | Frees prepared statement.             | `DEALLOCATE PREPARE stmt;`                                                             | Memory cleanup.                 | Scripts                 |
| 88  | `CREATE PROCEDURE`       | Defines stored procedure.             | `CREATE PROCEDURE getEmp() BEGIN SELECT * FROM emp; END;`                              | Encapsulate logic.              | Backend                 |
| 89  | `CALL`                   | Executes stored procedure.            | `CALL getEmp();`                                                                       | Invoke business logic.          | Reuse                   |
| 90  | `DROP PROCEDURE`         | Deletes stored procedure.             | `DROP PROCEDURE getEmp;`                                                               | Maintenance.                    | Cleanup                 |
| 91  | `CREATE FUNCTION`        | Custom function.                      | `CREATE FUNCTION calcTax(s DECIMAL) RETURNS DECIMAL RETURN s*0.1;`                     | Custom calculations.            | Modularization          |
| 92  | `TRIGGER`                | Auto action on event.                 | `CREATE TRIGGER before_insert BEFORE INSERT ON emp FOR EACH ROW SET NEW.joined=NOW();` | Auto timestamps.                | Automation              |
| 93  | `DROP TRIGGER`           | Deletes trigger.                      | `DROP TRIGGER before_insert;`                                                          | Remove automation.              | Maintenance             |
| 94  | `EVENT`                  | Scheduled task.                       | `CREATE EVENT clean_up ON SCHEDULE EVERY 1 DAY DO DELETE FROM logs;`                   | Auto cleanup.                   | Scheduling              |
| 95  | `SHOW EVENTS`            | Lists events.                         | `SHOW EVENTS;`                                                                         | Monitor schedules.              | Admin                   |
| 96  | `JSON_EXTRACT()`         | Get value from JSON.                  | `SELECT JSON_EXTRACT(info,'$.email');`                                                 | JSON columns.                   | Modern DBs              |
| 97  | `GROUP_CONCAT()`         | Combine rows into string.             | `SELECT GROUP_CONCAT(name) FROM emp;`                                                  | Compact lists.                  | Reports                 |
| 98  | `REGEXP`                 | Pattern matching via regex.           | `SELECT * FROM users WHERE email REGEXP '@gmail.com$';`                                | Data validation.                | Advanced filters        |
| 99  | `ALTER USER`             | Modify user properties.               | `ALTER USER 'bob'@'localhost' IDENTIFIED BY 'newpwd';`                                 | Reset password.                 | Admin                   |
| 100 | `SHOW ERRORS`            | Displays SQL errors.                  | `SHOW ERRORS;`                                                                         | Debugging DDL issues.           | Developer use           |

---

