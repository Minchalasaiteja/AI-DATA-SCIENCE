## **University Management System** .

---

# 🎓 **University Management System – Sequential SQL Output**

---

##  **1️⃣ DDL (Data Definition Language)**

### 1. Create Database

```sql
CREATE DATABASE IF NOT EXISTS UniversityDB;
```

**Output:**

```
Query OK, 1 row affected (0.01 sec)
```

### 2. Use Database

```sql
USE UniversityDB;
```

**Output:**

```
Database changed
```

### 3. Create Tables

```sql
CREATE TABLE IF NOT EXISTS Students (...);
CREATE TABLE IF NOT EXISTS Courses (...);
CREATE TABLE IF NOT EXISTS Enrollments (...);
CREATE TABLE IF NOT EXISTS Faculty (...);
```

**Output:**

```
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
```

---

##  **2️⃣ DML (Data Manipulation Language)**

### 1. Insert Students

```sql
INSERT INTO Students (name, age, gender, department) VALUES
('Amit Sharma', 21, 'Male', 'Computer Science'),
('Neha Patel', 22, 'Female', 'Electrical'),
('Ravi Kumar', 20, 'Male', 'Mechanical'),
('Priya Mehta', 23, 'Female', 'Civil');
```

**Output:**

```
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
```

### 2. Insert Courses

```sql
INSERT INTO Courses (course_name, credits, faculty_id) VALUES
('Database Systems', 4, 1),
('Thermodynamics', 3, 2),
('Structural Engineering', 3, 3),
('Digital Circuits', 4, 4);
```

**Output:**

```
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
```

### 3. Insert Faculty

```sql
INSERT INTO Faculty (name, department, email) VALUES
('Dr. Rao', 'Computer Science', 'rao@univ.com'),
('Dr. Iyer', 'Mechanical', 'iyer@univ.com'),
('Dr. Desai', 'Civil', 'desai@univ.com'),
('Dr. Khan', 'Electrical', 'khan@univ.com');
```

**Output:**

```
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
```

### 4. Insert Enrollments

```sql
INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 4, 'B'),
(3, 2, 'A'),
(4, 3, 'C'),
(1, 4, 'B');
```

**Output:**

```
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0
```

---

##  **3️⃣ DCL (Data Control Language)**

### 1. Create User

```sql
CREATE USER IF NOT EXISTS 'univ_staff'@'localhost' IDENTIFIED BY 'UniPass789!';
```

**Output:**

```
Query OK, 0 rows affected (0.00 sec)
```

### 2. Grant Privileges

```sql
GRANT SELECT ON UniversityDB.Students TO 'univ_staff'@'localhost';
GRANT SELECT, UPDATE ON UniversityDB.Enrollments TO 'univ_staff'@'localhost';
```

**Output:**

```
Query OK, 0 rows affected (0.00 sec)
Query OK, 0 rows affected (0.00 sec)
```

### 3. Apply Privileges

```sql
FLUSH PRIVILEGES;
```

**Output:**

```
Query OK, 0 rows affected (0.00 sec)
```

### 4. Show Grants

```sql
SHOW GRANTS FOR 'univ_staff'@'localhost';
```

**Output:**

```
Grants for univ_staff@localhost
GRANT USAGE ON *.* TO 'univ_staff'@'localhost' IDENTIFIED BY PASSWORD '*<hashed_value>';
GRANT SELECT ON `UniversityDB`.`Students` TO 'univ_staff'@'localhost';
GRANT SELECT, UPDATE ON `UniversityDB`.`Enrollments` TO 'univ_staff'@'localhost';
```

---

##  **4️⃣ SELECT Query Outputs**

### 1️⃣ List all students

```sql
SELECT student_id, name, department FROM Students;
```

**Output:**

| student_id | name        | department       |
| ---------- | ----------- | ---------------- |
| 1          | Amit Sharma | Computer Science |
| 2          | Neha Patel  | Electrical       |
| 3          | Ravi Kumar  | Mechanical       |
| 4          | Priya Mehta | Civil            |

---

### 2️⃣ List all courses and faculty

```sql
SELECT c.course_id, c.course_name, f.name AS Faculty
FROM Courses c
JOIN Faculty f ON c.faculty_id = f.faculty_id;
```

**Output:**

| course_id | course_name            | Faculty   |
| --------- | ---------------------- | --------- |
| 1         | Database Systems       | Dr. Rao   |
| 2         | Thermodynamics         | Dr. Iyer  |
| 3         | Structural Engineering | Dr. Desai |
| 4         | Digital Circuits       | Dr. Khan  |

---

### 3️⃣ Show all enrollments with grades

```sql
SELECT e.enrollment_id, s.name AS Student, c.course_name, e.grade
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;
```

**Output:**

| enrollment_id | Student     | course_name            | grade |
| ------------- | ----------- | ---------------------- | ----- |
| 1             | Amit Sharma | Database Systems       | A     |
| 2             | Neha Patel  | Digital Circuits       | B     |
| 3             | Ravi Kumar  | Thermodynamics         | A     |
| 4             | Priya Mehta | Structural Engineering | C     |
| 5             | Amit Sharma | Digital Circuits       | B     |

---

### 4️⃣ Count students per department

```sql
SELECT department, COUNT(student_id) AS Total_Students
FROM Students
GROUP BY department;
```

**Output:**

| department       | Total_Students |
| ---------------- | -------------- |
| Civil            | 1              |
| Computer Science | 1              |
| Electrical       | 1              |
| Mechanical       | 1              |

---

### 5️⃣ Average grades per course (example aggregation)

```sql
SELECT c.course_name, COUNT(e.grade) AS Enrollments
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
```

**Output:**

| course_name            | Enrollments |
| ---------------------- | ----------- |
| Database Systems       | 1           |
| Thermodynamics         | 1           |
| Structural Engineering | 1           |
| Digital Circuits       | 2           |

---
