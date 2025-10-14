## **contents**
## 1.University Management System
## 2.Hospital Management System
## 3.E-Commerce Management System


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


 ## **Hospital Management System SQL**


---

##  **1.DDL (Data Definition Language)**

### 1. Create Database

```sql
CREATE DATABASE IF NOT EXISTS HospitalDB;
```

**Output:**

```
Query OK, 1 row affected (0.01 sec)
```

### 2. Use Database

```sql
USE HospitalDB;
```

**Output:**

```
Database changed
```

### 3. Create Tables

```sql
CREATE TABLE IF NOT EXISTS Doctors (...);
CREATE TABLE IF NOT EXISTS Patients (...);
CREATE TABLE IF NOT EXISTS Appointments (...);
CREATE TABLE IF NOT EXISTS Billing (...);
```

**Output:**

```
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
```

---

##  **2️. DML (Data Manipulation Language)**

### 1. Insert Doctors

```sql
INSERT INTO Doctors (...) VALUES (...);
```

**Output:**

```
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
```

### 2. Insert Patients

```sql
INSERT INTO Patients (...) VALUES (...);
```

**Output:**

```
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
```

### 3. Insert Appointments

```sql
INSERT INTO Appointments (...) VALUES (...);
```

**Output:**

```
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0
```

### 4. Insert Billing

```sql
INSERT INTO Billing (...) VALUES (...);
```

**Output:**

```
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
```

---

##  **3️.DCL (Data Control Language)**

### 1. Create User

```sql
CREATE USER IF NOT EXISTS 'staff_user'@'localhost' IDENTIFIED BY 'StrongPass456!';
```

**Output:**

```
Query OK, 0 rows affected (0.00 sec)
```

### 2. Grant Privileges

```sql
GRANT SELECT ON HospitalDB.Patients TO 'staff_user'@'localhost';
GRANT SELECT, UPDATE ON HospitalDB.Appointments TO 'staff_user'@'localhost';
```

**Output:**

```
Query OK, 0 rows affected (0.00 sec)
Query OK, 0 rows affected (0.00 sec)
```

### 3. Apply Changes

```sql
FLUSH PRIVILEGES;
```

**Output:**

```
Query OK, 0 rows affected (0.00 sec)
```

### 4. Verify Privileges

```sql
SHOW GRANTS FOR 'staff_user'@'localhost';
```

**Output:**

```
Grants for staff_user@localhost
GRANT USAGE ON *.* TO 'staff_user'@'localhost' IDENTIFIED BY PASSWORD '*<hashed_value>';
GRANT SELECT ON `HospitalDB`.`Patients` TO 'staff_user'@'localhost';
GRANT SELECT, UPDATE ON `HospitalDB`.`Appointments` TO 'staff_user'@'localhost';
```

---

##  **4️ SELECT QUERY OUTPUTS**

### 1️. List all doctors and their specializations

```sql
SELECT doctor_id, name AS Doctor, specialization FROM Doctors;
```

**Output:**

| doctor_id | Doctor    | specialization |
| --------- | --------- | -------------- |
| 1         | Dr. Mehta | Cardiology     |
| 2         | Dr. Iyer  | Neurology      |
| 3         | Dr. Desai | Orthopedics    |
| 4         | Dr. Khan  | Dermatology    |

---

### 2️. Show all patients with pending bills

```sql
SELECT p.name AS Patient, b.amount, b.payment_status
FROM Billing b
JOIN Patients p ON b.patient_id = p.patient_id
WHERE b.payment_status = 'Pending';
```

**Output:**

| Patient     | amount  | payment_status |
| ----------- | ------- | -------------- |
| Priya Verma | 3000.00 | Pending        |
| Neha Patel  | 2000.00 | Pending        |

---

###3️. List appointments scheduled for Dr. Mehta

```sql
SELECT a.appointment_id, p.name AS Patient, a.appointment_date, a.status
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
WHERE d.name = 'Dr. Mehta';
```

**Output:**

| appointment_id | Patient     | appointment_date | status    |
| -------------- | ----------- | ---------------- | --------- |
| 1              | Amit Sharma | 2024-06-10       | Completed |
| 5              | Priya Verma | 2024-06-14       | Scheduled |

---

### 4️. Count how many appointments each doctor has handled

```sql
SELECT d.name AS Doctor, COUNT(a.appointment_id) AS Total_Appointments
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.name;
```

**Output:**

| Doctor    | Total_Appointments |
| --------- | ------------------ |
| Dr. Mehta | 2                  |
| Dr. Iyer  | 1                  |
| Dr. Desai | 1                  |
| Dr. Khan  | 1                  |

---

### 5️. View total revenue collected from paid bills

```sql
SELECT SUM(amount) AS Total_Revenue
FROM Billing
WHERE payment_status = 'Paid';
```

**Output:**

| Total_Revenue |
| ------------- |
| 9500.00       |

---


## **E-commerce Management System**
---

# 🛒 **E-Commerce Management System – Sequential SQL Output**

---

##  **1️⃣ DDL (Data Definition Language)**

### 1. Create Database

```sql
CREATE DATABASE IF NOT EXISTS ECommerceDB;
```

**Output:**

```
Query OK, 1 row affected (0.01 sec)
```

### 2. Use Database

```sql
USE ECommerceDB;
```

**Output:**

```
Database changed
```

### 3. Create Tables

```sql
CREATE TABLE IF NOT EXISTS Customers (...);
CREATE TABLE IF NOT EXISTS Products (...);
CREATE TABLE IF NOT EXISTS Orders (...);
CREATE TABLE IF NOT EXISTS OrderItems (...);
CREATE TABLE IF NOT EXISTS Payments (...);
```

**Output:**

```
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
```

---

##  **2️⃣ DML (Data Manipulation Language)**

### 1. Insert Customers

```sql
INSERT INTO Customers (name, email, phone, address) VALUES
('Amit Sharma', 'amit@example.com', '9876543210', 'Delhi'),
('Neha Patel', 'neha@example.com', '9876543211', 'Mumbai'),
('Ravi Kumar', 'ravi@example.com', '9876543212', 'Chennai');
```

**Output:**

```
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0
```

### 2. Insert Products

```sql
INSERT INTO Products (product_name, category, price, stock) VALUES
('Laptop', 'Electronics', 55000.00, 10),
('Smartphone', 'Electronics', 30000.00, 20),
('Shoes', 'Fashion', 2000.00, 50);
```

**Output:**

```
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0
```

### 3. Insert Orders

```sql
INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2024-06-10', 'Completed'),
(2, '2024-06-11', 'Pending'),
(3, '2024-06-12', 'Completed');
```

**Output:**

```
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0
```

### 4. Insert Order Items

```sql
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 3, 1);
```

**Output:**

```
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
```

### 5. Insert Payments

```sql
INSERT INTO Payments (order_id, amount, payment_date, payment_status) VALUES
(1, 59000.00, '2024-06-10', 'Paid'),
(2, 30000.00, '2024-06-11', 'Pending'),
(3, 2000.00, '2024-06-12', 'Paid');
```

**Output:**

```
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0
```

---

##  **3️⃣ DCL (Data Control Language)**

### 1. Create Staff User

```sql
CREATE USER IF NOT EXISTS 'ecom_staff'@'localhost' IDENTIFIED BY 'EcomPass123!';
```

**Output:**

```
Query OK, 0 rows affected (0.00 sec)
```

### 2. Grant Privileges

```sql
GRANT SELECT ON ECommerceDB.Customers TO 'ecom_staff'@'localhost';
GRANT SELECT, UPDATE ON ECommerceDB.Orders TO 'ecom_staff'@'localhost';
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
SHOW GRANTS FOR 'ecom_staff'@'localhost';
```

**Output:**

```
Grants for ecom_staff@localhost
GRANT USAGE ON *.* TO 'ecom_staff'@'localhost' IDENTIFIED BY PASSWORD '*<hashed_value>';
GRANT SELECT ON `ECommerceDB`.`Customers` TO 'ecom_staff'@'localhost';
GRANT SELECT, UPDATE ON `ECommerceDB`.`Orders` TO 'ecom_staff'@'localhost';
```

---

##  **4️⃣ SELECT Query Outputs**

### 1️⃣ List all customers

```sql
SELECT customer_id, name, email FROM Customers;
```

**Output:**

| customer_id | name        | email                                       |
| ----------- | ----------- | ------------------------------------------- |
| 1           | Amit Sharma | [amit@example.com](mailto:amit@example.com) |
| 2           | Neha Patel  | [neha@example.com](mailto:neha@example.com) |
| 3           | Ravi Kumar  | [ravi@example.com](mailto:ravi@example.com) |

---

### 2️⃣ List all products

```sql
SELECT product_id, product_name, price, stock FROM Products;
```

**Output:**

| product_id | product_name | price    | stock |
| ---------- | ------------ | -------- | ----- |
| 1          | Laptop       | 55000.00 | 10    |
| 2          | Smartphone   | 30000.00 | 20    |
| 3          | Shoes        | 2000.00  | 50    |

---

### 3️⃣ Show all orders with customer name

```sql
SELECT o.order_id, c.name AS Customer, o.status, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;
```

**Output:**

| order_id | Customer    | status    | order_date |
| -------- | ----------- | --------- | ---------- |
| 1        | Amit Sharma | Completed | 2024-06-10 |
| 2        | Neha Patel  | Pending   | 2024-06-11 |
| 3        | Ravi Kumar  | Completed | 2024-06-12 |

---

### 4️⃣ Show order items per order

```sql
SELECT o.order_id, p.product_name, oi.quantity
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Products p ON oi.product_id = p.product_id;
```

**Output:**

| order_id | product_name | quantity |
| -------- | ------------ | -------- |
| 1        | Laptop       | 1        |
| 1        | Shoes        | 2        |
| 2        | Smartphone   | 1        |
| 3        | Shoes        | 1        |

---

### 5️⃣ Total revenue from paid orders

```sql
SELECT SUM(amount) AS Total_Revenue
FROM Payments
WHERE payment_status = 'Paid';
```

**Output:**

| Total_Revenue |
| ------------- |
| 61000.00      |

---






---

#  **Consolidated SQL  – Hospital, University, E-Commerce Management Systems**

---

## **1️⃣ Hospital Management System**

### **A. SQL Script**

```sql
-- =========================
-- Hospital Management System
-- =========================

-- DDL: Create Database & Tables
CREATE DATABASE IF NOT EXISTS HospitalDB;
USE HospitalDB;

CREATE TABLE IF NOT EXISTS Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    contact VARCHAR(15),
    address VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE IF NOT EXISTS Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    amount DECIMAL(10,2),
    payment_status ENUM('Paid', 'Pending') DEFAULT 'Pending',
    bill_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- DML: Insert Sample Data
INSERT INTO Doctors (name, specialization, phone, email) VALUES
('Dr. Mehta', 'Cardiology', '9991112222', 'mehta@hospital.com'),
('Dr. Iyer', 'Neurology', '9993334444', 'iyer@hospital.com'),
('Dr. Desai', 'Orthopedics', '9995556666', 'desai@hospital.com'),
('Dr. Khan', 'Dermatology', '9997778888', 'khan@hospital.com');

INSERT INTO Patients (name, age, gender, contact, address) VALUES
('Amit Sharma', 45, 'Male', '9876543210', 'Delhi'),
('Priya Verma', 29, 'Female', '9876543211', 'Mumbai'),
('Ravi Singh', 35, 'Male', '9876543212', 'Chennai'),
('Neha Patel', 40, 'Female', '9876543213', 'Pune');

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2024-06-10', 'Completed'),
(2, 2, '2024-06-11', 'Scheduled'),
(3, 3, '2024-06-12', 'Completed'),
(4, 4, '2024-06-13', 'Cancelled'),
(2, 1, '2024-06-14', 'Scheduled');

INSERT INTO Billing (patient_id, amount, payment_status, bill_date) VALUES
(1, 5000.00, 'Paid', '2024-06-10'),
(2, 3000.00, 'Pending', '2024-06-11'),
(3, 4500.00, 'Paid', '2024-06-12'),
(4, 2000.00, 'Pending', '2024-06-13');

-- DCL: Create User and Grant Privileges
CREATE USER IF NOT EXISTS 'staff_user'@'localhost' IDENTIFIED BY 'StrongPass456!';
GRANT SELECT ON HospitalDB.Patients TO 'staff_user'@'localhost';
GRANT SELECT, UPDATE ON HospitalDB.Appointments TO 'staff_user'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'staff_user'@'localhost';

-- SELECT Queries
SELECT doctor_id, name AS Doctor, specialization FROM Doctors;
SELECT p.name AS Patient, b.amount, b.payment_status
FROM Billing b
JOIN Patients p ON b.patient_id = p.patient_id
WHERE b.payment_status = 'Pending';
SELECT a.appointment_id, p.name AS Patient, a.appointment_date, a.status
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
WHERE d.name = 'Dr. Mehta';
SELECT d.name AS Doctor, COUNT(a.appointment_id) AS Total_Appointments
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.name;
SELECT SUM(amount) AS Total_Revenue FROM Billing WHERE payment_status = 'Paid';
```

### **B. Sequential Output (Console)**

**DDL**

```
Query OK, 1 row affected (0.01 sec)
Database changed
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
Query OK, 0 rows affected (0.02 sec)
```

**DML**

```
Query OK, 4 rows affected (0.01 sec)
Query OK, 4 rows affected (0.01 sec)
Query OK, 5 rows affected (0.01 sec)
Query OK, 4 rows affected (0.01 sec)
```

**DCL**

```
Query OK, 0 rows affected (0.00 sec)
Query OK, 0 rows affected (0.00 sec)
Query OK, 0 rows affected (0.00 sec)
Query OK, 0 rows affected (0.00 sec)
SHOW GRANTS Output:
GRANT USAGE ON *.* TO 'staff_user'@'localhost';
GRANT SELECT ON HospitalDB.Patients TO 'staff_user'@'localhost';
GRANT SELECT, UPDATE ON HospitalDB.Appointments TO 'staff_user'@'localhost';
```

**SELECT**

* Doctors:
  | doctor_id | Doctor    | specialization |
  |-----------|-----------|----------------|
  | 1         | Dr. Mehta | Cardiology     |
  | 2         | Dr. Iyer  | Neurology      |
  | 3         | Dr. Desai | Orthopedics    |
  | 4         | Dr. Khan  | Dermatology    |

* Patients with Pending Bills:
  | Patient     | amount | payment_status |
  |-------------|--------|----------------|
  | Priya Verma | 3000   | Pending        |
  | Neha Patel  | 2000   | Pending        |

* Appointments for Dr. Mehta:
  | appointment_id | Patient     | appointment_date | status     |
  |----------------|------------|-----------------|------------|
  | 1              | Amit Sharma | 2024-06-10      | Completed  |
  | 5              | Priya Verma | 2024-06-14      | Scheduled  |

* Appointment Count per Doctor:
  | Doctor     | Total_Appointments |
  |------------|------------------|
  | Dr. Mehta | 2 |
  | Dr. Iyer  | 1 |
  | Dr. Desai | 1 |
  | Dr. Khan  | 1 |

* Total Revenue:
  | Total_Revenue |
  |---------------|
  | 9500.00 |

---

## **2️⃣ University Management System**

### **A. SQL Script**

```sql
-- University Management System

CREATE DATABASE IF NOT EXISTS UniversityDB;
USE UniversityDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    department VARCHAR(50)
);

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    credits INT,
    faculty_id INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students (name, age, gender, department) VALUES
('Amit Sharma',21,'Male','Computer Science'),
('Neha Patel',22,'Female','Electrical'),
('Ravi Kumar',20,'Male','Mechanical'),
('Priya Mehta',23,'Female','Civil');

INSERT INTO Faculty (name, department, email) VALUES
('Dr. Rao','Computer Science','rao@univ.com'),
('Dr. Iyer','Mechanical','iyer@univ.com'),
('Dr. Desai','Civil','desai@univ.com'),
('Dr. Khan','Electrical','khan@univ.com');

INSERT INTO Courses (course_name, credits, faculty_id) VALUES
('Database Systems',4,1),
('Thermodynamics',3,2),
('Structural Engineering',3,3),
('Digital Circuits',4,4);

INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(1,1,'A'),
(2,4,'B'),
(3,2,'A'),
(4,3,'C'),
(1,4,'B');

CREATE USER IF NOT EXISTS 'univ_staff'@'localhost' IDENTIFIED BY 'UniPass789!';
GRANT SELECT ON UniversityDB.Students TO 'univ_staff'@'localhost';
GRANT SELECT, UPDATE ON UniversityDB.Enrollments TO 'univ_staff'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'univ_staff'@'localhost';

SELECT student_id,name,department FROM Students;
SELECT c.course_id,c.course_name,f.name AS Faculty
FROM Courses c
JOIN Faculty f ON c.faculty_id=f.faculty_id;
SELECT e.enrollment_id,s.name AS Student,c.course_name,e.grade
FROM Enrollments e
JOIN Students s ON e.student_id=s.student_id
JOIN Courses c ON e.course_id=c.course_id;
SELECT department, COUNT(student_id) AS Total_Students FROM Students GROUP BY department;
SELECT c.course_name, COUNT(e.grade) AS Enrollments
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id=e.course_id
GROUP BY c.course_name;
```

### **B. Sequential Output (Console)**

**DDL**

```
Query OK, 1 row affected
Database changed
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
```

**DML**

```
Query OK, 4 rows affected
Query OK, 4 rows affected
Query OK, 4 rows affected
Query OK, 5 rows affected
```

**DCL**

```
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
SHOW GRANTS Output:
GRANT USAGE ON *.* TO 'univ_staff'@'localhost';
GRANT SELECT ON UniversityDB.Students TO 'univ_staff'@'localhost';
GRANT SELECT, UPDATE ON UniversityDB.Enrollments TO 'univ_staff'@'localhost';
```

**SELECT**

* Students:
  | student_id | name        | department       |
  |------------|------------|-----------------|
  | 1 | Amit Sharma | Computer Science |
  | 2 | Neha Patel  | Electrical      |
  | 3 | Ravi Kumar  | Mechanical      |
  | 4 | Priya Mehta | Civil           |

* Courses & Faculty:
  | course_id | course_name          | Faculty  |
  |-----------|---------------------|---------|
  | 1         | Database Systems     | Dr. Rao |
  | 2         | Thermodynamics       | Dr. Iyer|
  | 3         | Structural Engineering| Dr. Desai|
  | 4         | Digital Circuits      | Dr. Khan|

* Enrollments:
  | enrollment_id | Student     | course_name          | grade |
  |---------------|------------|--------------------|-------|
  | 1             | Amit Sharma| Database Systems    | A     |
  | 2             | Neha Patel | Digital Circuits    | B     |
  | 3             | Ravi Kumar | Thermodynamics      | A     |
  | 4             | Priya Mehta| Structural Engineering| C   |
  | 5             | Amit Sharma| Digital Circuits    | B     |

* Students per Department:
  | department       | Total_Students |
  |-----------------|----------------|
  | Civil            | 1              |
  | Computer Science | 1              |
  | Electrical       | 1              |
  | Mechanical       | 1              |

* Enrollments per Course:
  | course_name          | Enrollments |
  |---------------------|-------------|
  | Database Systems     | 1           |
  | Thermodynamics       | 1           |
  | Structural Engineering| 1          |
  | Digital Circuits     | 2           |

---

## **3️⃣ E-Commerce Management System**

### **A. SQL Script**

```sql
-- E-Commerce Management System

CREATE DATABASE IF NOT EXISTS ECommerceDB;
USE ECommerceDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    status ENUM('Pending','Completed','Cancelled'),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_status ENUM('Paid','Pending'),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Customers (name,email,phone,address) VALUES
('Amit Sharma','amit@example.com','9876543210','Delhi'),
('Neha Patel','neha@example.com','9876543211','Mumbai'),
('Ravi Kumar','ravi@example.com','9876543212','Chennai');

INSERT INTO Products (product_name,category,price,stock) VALUES
('Laptop','Electronics',55000,10),
('Smartphone','Electronics',30000,20),
('Shoes','Fashion',2000,50);

INSERT INTO Orders (customer_id,order_date,status) VALUES
(1,'2024-06-10','Completed'),
(2,'2024-06-11','Pending'),
(3,'2024-06-12','Completed');

INSERT INTO OrderItems (order_id,product_id,quantity) VALUES
(1,1,1),
(1,3,2),
(2,2,1),
(3,3,1);

INSERT INTO Payments (order_id,amount,payment_date,payment_status) VALUES
(1,59000,'2024-06-10','Paid'),
(2,30000,'2024-06-11','Pending'),
(3,2000,'2024-06-12','Paid');

CREATE USER IF NOT EXISTS 'ecom_staff'@'localhost' IDENTIFIED BY 'EcomPass123!';
GRANT SELECT ON ECommerceDB.Customers TO 'ecom_staff'@'localhost';
GRANT SELECT, UPDATE ON ECommerceDB.Orders TO 'ecom_staff'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'ecom_staff'@'localhost';

SELECT customer_id,name,email FROM Customers;
SELECT product_id,product_name,price,stock FROM Products;
SELECT o.order_id,c.name AS Customer,o.status,o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id=c.customer_id;
SELECT o.order_id,p.product_name,oi.quantity
FROM OrderItems oi
JOIN Orders o ON oi.order_id=o.order_id
JOIN Products p ON oi.product_id=p.product_id;
SELECT SUM(amount) AS Total_Revenue FROM Payments WHERE payment_status='Paid';
```



## **Sequential Output**

**DDL**

```
Query OK, 1 row affected
Database changed
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
```

**DML**

```
Query OK, 3 rows affected
Query OK, 3 rows affected
Query OK, 3 rows affected
Query OK, 4 rows affected
Query OK, 3 rows affected
```

**DCL**

```
Query OK, 0 rows affected
Query OK, 0 rows affected
Query OK, 0 rows affected
SHOW GRANTS Output:
GRANT USAGE ON *.* TO 'ecom_staff'@'localhost';
GRANT SELECT ON ECommerceDB.Customers TO 'ecom_staff'@'localhost';
GRANT SELECT, UPDATE ON ECommerceDB.Orders TO 'ecom_staff'@'localhost';
```

**SELECT**

* Customers:
  | customer_id | name        | email             |
  |-------------|------------|------------------|
  | 1           | Amit Sharma | [amit@example.com](mailto:amit@example.com) |
  | 2           | Neha Patel  | [neha@example.com](mailto:neha@example.com) |
  | 3           | Ravi Kumar  | [ravi@example.com](mailto:ravi@example.com) |

* Products:
  | product_id | product_name | price     | stock |
  |------------|--------------|----------|-------|
  | 1          | Laptop       | 55000.00 | 10    |
  | 2          | Smartphone  | 30000.00 | 20    |
  | 3          | Shoes       | 2000.00  | 50    |

* Orders with Customers:
  | order_id | Customer     | status     | order_date |
  |----------|------------|------------|------------|
  | 1        | Amit Sharma  | Completed | 2024-06-10 |
  | 2        | Neha Patel   | Pending   | 2024-06-11 |
  | 3        | Ravi Kumar   | Completed | 2024-06-12 |

* Order Items:
  | order_id | product_name | quantity |
  |----------|-------------|---------|
  | 1        | Laptop       | 1       |
  | 1        | Shoes        | 2       |
  | 2        | Smartphone   | 1       |
  | 3        | Shoes        | 1       |

* Total Revenue:
  | Total_Revenue |
  |---------------|
  | 61000.00 |

---


