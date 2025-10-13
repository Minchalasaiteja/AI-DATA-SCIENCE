 DBMS concepts + SQL commands
 Includes syntax, examples, use case, and real-world scenario
 Works as study guide, reference, and interview prep

---

# **DBMS & SQL Mastery Cheat Sheet**

---

## **1. DBMS Fundamentals**

| Concept           | Description                                                | Notes/Use Case                               |
| ----------------- | ---------------------------------------------------------- | -------------------------------------------- |
| DBMS              | Software to manage databases                               | Centralized data storage & management        |
| RDBMS             | Relational DBMS using tables & relations                   | MySQL, PostgreSQL, Oracle                    |
| Data Models       | Relational, Hierarchical, Network, NoSQL                   | ER-diagrams for design                       |
| Keys              | Primary, Foreign, Candidate, Composite, Surrogate          | Ensure uniqueness & relationships            |
| Constraints       | NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT | Data integrity                               |
| Normalization     | 1NF, 2NF, 3NF, BCNF                                        | Eliminate redundancy, optimize schema        |
| ACID Properties   | Atomicity, Consistency, Isolation, Durability              | Transaction reliability                      |
| Indexing          | B-Tree, Hash Index                                         | Speed up SELECT queries                      |
| Views             | Virtual tables based on SELECT queries                     | Simplify complex queries                     |
| Transactions      | Group of operations treated as one unit                    | Commit or rollback to maintain integrity     |
| Backup & Recovery | Full, incremental, point-in-time                           | Disaster recovery, testing environments      |
| SQL Injection     | Malicious SQL commands in user input                       | Prevent with prepared statements, validation |

---

## **2. SQL Command Reference**

### **DDL (Data Definition Language)**

| Command         | Syntax                                                         | Example                                                     | Notes                                       |              |
| --------------- | -------------------------------------------------------------- | ----------------------------------------------------------- | ------------------------------------------- | ------------ |
| CREATE DATABASE | `CREATE DATABASE db_name;`                                     | `CREATE DATABASE ecommerce;`                                | Create new DB                               |              |
| DROP DATABASE   | `DROP DATABASE db_name;`                                       | `DROP DATABASE testdb;`                                     | Delete DB                                   |              |
| CREATE TABLE    | `CREATE TABLE table_name(column1 datatype, column2 datatype);` | `CREATE TABLE users(id INT PRIMARY KEY, name VARCHAR(50));` | Table creation                              |              |
| ALTER TABLE     | `ALTER TABLE table_name ADD                                    | DROP column_name datatype;`                                 | `ALTER TABLE users ADD email VARCHAR(100);` | Modify table |
| DROP TABLE      | `DROP TABLE table_name;`                                       | `DROP TABLE users;`                                         | Remove table                                |              |
| TRUNCATE TABLE  | `TRUNCATE TABLE table_name;`                                   | `TRUNCATE TABLE logs;`                                      | Remove all rows quickly                     |              |

---

### **DML (Data Manipulation Language)**

| Command | Syntax                                            | Example                                        | Notes                |
| ------- | ------------------------------------------------- | ---------------------------------------------- | -------------------- |
| INSERT  | `INSERT INTO table(col1,col2) VALUES(val1,val2);` | `INSERT INTO users(id,name) VALUES(1,'John');` | Add new data         |
| UPDATE  | `UPDATE table SET col=value WHERE condition;`     | `UPDATE users SET name='Doe' WHERE id=1;`      | Modify existing data |
| DELETE  | `DELETE FROM table WHERE condition;`              | `DELETE FROM users WHERE id=1;`                | Remove records       |
| SELECT  | `SELECT col1,col2 FROM table WHERE condition;`    | `SELECT name FROM users;`                      | Query data           |

---

### **DCL (Data Control Language)**

| Command | Syntax                                              | Example                                                      | Notes              |
| ------- | --------------------------------------------------- | ------------------------------------------------------------ | ------------------ |
| GRANT   | `GRANT privileges ON db.table TO 'user'@'host';`    | `GRANT SELECT, INSERT ON ecommerce.* TO 'john'@'localhost';` | Assign permissions |
| REVOKE  | `REVOKE privileges ON db.table FROM 'user'@'host';` | `REVOKE INSERT ON ecommerce.* FROM 'john'@'localhost';`      | Remove permissions |

---

### **TCL (Transaction Control Language)**

| Command   | Syntax               | Example                                                         | Notes                  |
| --------- | -------------------- | --------------------------------------------------------------- | ---------------------- |
| COMMIT    | `COMMIT;`            | `UPDATE accounts SET balance=balance-100 WHERE id=1; COMMIT;`   | Save transaction       |
| ROLLBACK  | `ROLLBACK;`          | `UPDATE accounts SET balance=balance-100 WHERE id=1; ROLLBACK;` | Undo transaction       |
| SAVEPOINT | `SAVEPOINT sp_name;` | `SAVEPOINT sp1;`                                                | Partial rollback point |

---

## **3. SQL Query Essentials**

| Feature                      | Syntax                                                            | Example                                                | Notes                                    |           |
| ---------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------ | ---------------------------------------- | --------- |
| WHERE                        | `SELECT * FROM table WHERE condition;`                            | `SELECT * FROM users WHERE age>18;`                    | Filter data                              |           |
| ORDER BY                     | `SELECT * FROM table ORDER BY col ASC                             | DESC;`                                                 | `SELECT * FROM users ORDER BY name ASC;` | Sort data |
| GROUP BY                     | `SELECT col, COUNT(*) FROM table GROUP BY col;`                   | `SELECT status, COUNT(*) FROM orders GROUP BY status;` | Aggregate data                           |           |
| HAVING                       | `SELECT col, COUNT(*) FROM table GROUP BY col HAVING COUNT(*)>1;` | Filter grouped data                                    |                                          |           |
| DISTINCT                     | `SELECT DISTINCT col FROM table;`                                 | `SELECT DISTINCT country FROM users;`                  | Remove duplicates                        |           |
| JOIN (INNER)                 | `SELECT * FROM t1 INNER JOIN t2 ON t1.col=t2.col;`                | Combine related tables                                 |                                          |           |
| JOIN (LEFT/RIGHT/FULL/CROSS) | See syntax examples                                               | Keep all/combined records                              | Real-time reporting & analytics          |           |
| Subquery                     | `SELECT col FROM table WHERE col IN (SELECT col FROM table2);`    | Nested queries for advanced filtering                  |                                          |           |
| LIKE                         | `SELECT * FROM users WHERE name LIKE 'J%';`                       | Pattern matching                                       |                                          |           |
| IN                           | `SELECT * FROM table WHERE col IN (val1,val2);`                   | Multiple value matching                                |                                          |           |
| BETWEEN                      | `SELECT * FROM table WHERE col BETWEEN val1 AND val2;`            | Range check                                            |                                          |           |
| IS NULL / IS NOT NULL        | `SELECT * FROM table WHERE col IS NULL;`                          | Check empty fields                                     |                                          |           |

---

## **4. Advanced SQL Features**

| Feature          | Syntax                                        | Example                                                                  | Notes            |                                              |                          |
| ---------------- | --------------------------------------------- | ------------------------------------------------------------------------ | ---------------- | -------------------------------------------- | ------------------------ |
| CREATE VIEW      | `CREATE VIEW view_name AS SELECT ...;`        | `CREATE VIEW active_users AS SELECT * FROM users WHERE status='active';` | Simplify queries |                                              |                          |
| DROP VIEW        | `DROP VIEW view_name;`                        | Remove view                                                              |                  |                                              |                          |
| Stored Procedure | `CREATE PROCEDURE proc_name() BEGIN ... END;` | `CREATE PROCEDURE GetUsers() BEGIN SELECT * FROM users; END;`            | Reusable queries |                                              |                          |
| Call Procedure   | `CALL proc_name();`                           | Execute procedure                                                        |                  |                                              |                          |
| Trigger          | `CREATE TRIGGER trg BEFORE                    | AFTER INSERT                                                             | UPDATE           | DELETE ON table FOR EACH ROW BEGIN ... END;` | Auto-action on DB events |
| Drop Trigger     | `DROP TRIGGER trg_name;`                      | Remove trigger                                                           |                  |                                              |                          |
| Index            | `CREATE INDEX idx_name ON table(col);`        | Speed up queries                                                         |                  |                                              |                          |
| Drop Index       | `DROP INDEX idx_name ON table;`               | Remove index                                                             |                  |                                              |                          |
| EXPLAIN          | `EXPLAIN SELECT * FROM table;`                | Analyze query plan & optimize                                            |                  |                                              |                          |

---

## **5. Database Design & Normalization**

| Concept         | Description                    | Notes                                        |
| --------------- | ------------------------------ | -------------------------------------------- |
| 1NF             | Eliminate repeating groups     | Each column contains atomic values           |
| 2NF             | Remove partial dependencies    | Non-key attributes depend on whole key       |
| 3NF             | Remove transitive dependencies | No dependency on non-prime attributes        |
| BCNF            | Stronger 3NF                   | Handles edge cases of 3NF                    |
| Denormalization | Merge tables for performance   | Trade-off between speed & redundancy         |
| ER Diagram      | Visual schema design           | Identify entities, attributes, relationships |

---

## **6. Transactions & ACID**

| Property    | Description                              | Example/Use Case                                    |
| ----------- | ---------------------------------------- | --------------------------------------------------- |
| Atomicity   | All-or-nothing transaction               | Bank transfer: debit & credit must succeed together |
| Consistency | DB remains consistent                    | Enforce constraints after transaction               |
| Isolation   | Concurrent transactions do not interfere | Multi-user operations in e-commerce site            |
| Durability  | Committed changes persist                | Backup & crash recovery                             |

---

## **7. SQL Optimization Tips**

* Always use **indexes** on frequently queried columns
* Use **EXPLAIN** to analyze query plans
* Avoid SELECT * in large tables; fetch only required columns
* Normalize tables but denormalize selectively for performance
* Use **LIMIT** for large datasets to reduce load

---

## **8. Real-Time Use Case Scenarios**

| SQL Feature             | Scenario                                        |
| ----------------------- | ----------------------------------------------- |
| JOIN                    | Combine order and customer tables for reporting |
| Aggregate Functions     | Count orders by status for dashboard            |
| Triggers                | Auto-update inventory after order placement     |
| Stored Procedure        | Generate monthly invoices                       |
| Views                   | Provide manager-only summary tables             |
| Index                   | Speed up search on product catalog              |
| Transaction & ACID      | Money transfer in banking system                |
| Security (GRANT/REVOKE) | Restrict sensitive tables to admins             |

---

 

---

