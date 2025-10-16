-- =========================================
-- PROJECT 1: Employee Management System
-- =========================================
CREATE DATABASE IF NOT EXISTS project1_employee;
USE project1_employee;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    join_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_name) VALUES ('HR'), ('IT'), ('Finance');
INSERT INTO employees (emp_name, dept_id, salary, join_date) VALUES
('Alice', 1, 55000, '2023-01-15'),
('Bob', 2, 65000, '2022-07-10'),
('Charlie', 2, 72000, '2023-03-12'),
('David', 3, 50000, '2021-11-05');

-- =========================================
-- PROJECT 2: Library Management System
-- =========================================
CREATE DATABASE IF NOT EXISTS project2_library;
USE project2_library;

CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(50)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author_id INT,
    copies INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(50)
);

CREATE TABLE borrow (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO authors (author_name) VALUES ('J.K. Rowling'), ('George Orwell'), ('J.R.R. Tolkien');
INSERT INTO books (title, author_id, copies) VALUES
('Harry Potter', 1, 5),
('1984', 2, 3),
('Lord of the Rings', 3, 4);
INSERT INTO members (member_name) VALUES ('John'), ('Emma'), ('Mike');
INSERT INTO borrow (book_id, member_id, borrow_date, return_date) VALUES
(1, 1, '2025-10-01', '2025-10-10'),
(2, 2, '2025-10-02', NULL);

-- =========================================
-- PROJECT 3: Student Attendance Tracker
-- =========================================
CREATE DATABASE IF NOT EXISTS project3_attendance;
USE project3_attendance;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);

CREATE TABLE classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(50)
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    class_id INT,
    attendance_date DATE,
    status ENUM('Present','Absent') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

INSERT INTO students (student_name) VALUES ('Alice'), ('Bob'), ('Charlie');
INSERT INTO classes (class_name) VALUES ('Math'), ('Science');
INSERT INTO attendance (student_id, class_id, attendance_date, status) VALUES
(1, 1, '2025-10-01', 'Present'),
(2, 1, '2025-10-01', 'Absent'),
(3, 2, '2025-10-01', 'Present');

-- =========================================
-- PROJECT 4: Online Retail Store Database
-- =========================================
CREATE DATABASE IF NOT EXISTS project4_retail;
USE project4_retail;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_name, email) VALUES ('John','john@example.com'), ('Emma','emma@example.com');
INSERT INTO products (product_name, price) VALUES ('Laptop',800.00), ('Mouse',20.00), ('Keyboard',30.00);
INSERT INTO orders (customer_id, order_date) VALUES (1,'2025-10-10'), (2,'2025-10-11');
INSERT INTO order_items (order_id, product_id, quantity) VALUES (1,1,1), (1,2,2), (2,3,1);

-- =========================================
-- PROJECT 5: Hotel Reservation System
-- =========================================
CREATE DATABASE IF NOT EXISTS project5_hotel;
USE project5_hotel;

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10),
    room_type VARCHAR(20),
    price DECIMAL(10,2)
);

CREATE TABLE guests (
    guest_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_name VARCHAR(50)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_id INT,
    room_id INT,
    check_in DATE,
    check_out DATE,
    FOREIGN KEY (guest_id) REFERENCES guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

INSERT INTO rooms (room_number, room_type, price) VALUES ('101','Single',100.00), ('102','Double',150.00);
INSERT INTO guests (guest_name) VALUES ('Alice'), ('Bob');
INSERT INTO bookings (guest_id, room_id, check_in, check_out) VALUES
(1, 1, '2025-10-20','2025-10-22'),
(2, 2, '2025-10-21','2025-10-23');

-- =========================================
-- PROJECT 6: Banking Management System
-- =========================================
CREATE DATABASE IF NOT EXISTS project6_banking;
USE project6_banking;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(15,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    amount DECIMAL(15,2),
    transaction_date DATE,
    type ENUM('Deposit','Withdraw'),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

INSERT INTO customers (customer_name) VALUES ('Alice'), ('Bob');
INSERT INTO accounts (customer_id, account_type, balance) VALUES (1,'Savings',5000.00),(2,'Checking',3000.00);
INSERT INTO transactions (account_id, amount, transaction_date, type) VALUES
(1,1000,'2025-10-10','Deposit'),
(2,500,'2025-10-11','Withdraw');

-- =========================================
-- PROJECT 7: School Library Borrowing Tracker
-- =========================================
CREATE DATABASE IF NOT EXISTS project7_librarytracker;
USE project7_librarytracker;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100)
);

CREATE TABLE borrow_history (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO students (student_name) VALUES ('John'), ('Emma');
INSERT INTO books (title) VALUES ('Harry Potter'), ('1984');
INSERT INTO borrow_history (student_id, book_id, borrow_date, return_date) VALUES
(1,1,'2025-10-01','2025-10-10'),
(2,2,'2025-10-02',NULL);

-- =========================================
-- PROJECT 8: Inventory Management System
-- =========================================
CREATE DATABASE IF NOT EXISTS project8_inventory;
USE project8_inventory;

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    supplier_id INT,
    stock INT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

INSERT INTO suppliers (supplier_name) VALUES ('Supplier A'), ('Supplier B');
INSERT INTO products (product_name, supplier_id, stock) VALUES ('Laptop',1,10), ('Mouse',2,50);

-- =========================================
-- PROJECT 9: Online Exam Portal
-- =========================================
CREATE DATABASE IF NOT EXISTS project9_exam;
USE project9_exam;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);

CREATE TABLE exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_name VARCHAR(50),
    total_marks INT
);

CREATE TABLE questions (
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_id INT,
    question_text VARCHAR(255),
    marks INT,
    FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);

CREATE TABLE results (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    exam_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);

INSERT INTO students (student_name) VALUES ('Alice'), ('Bob');
INSERT INTO exams (exam_name,total_marks) VALUES ('Math Quiz',100);
INSERT INTO questions (exam_id, question_text, marks) VALUES (1,'2+2=?',5),(1,'5*3=?',10);
INSERT INTO results (student_id, exam_id, marks_obtained) VALUES (1,1,15),(2,1,12);

-- =========================================
-- PROJECT 10: Movie Ticket Booking System
-- =========================================
CREATE DATABASE IF NOT EXISTS project10_movie;
USE project10_movie;

CREATE TABLE theaters (
    theater_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_name VARCHAR(50)
);

CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50)
);

CREATE TABLE shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_id INT,
    movie_id INT,
    show_time DATETIME,
    FOREIGN KEY (theater_id) REFERENCES theaters(theater_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    show_id INT,
    customer_name VARCHAR(50),
    seats INT,
    FOREIGN KEY (show_id) REFERENCES shows(show_id)
);

INSERT INTO theaters (theater_name) VALUES ('Grand Cinema'), ('Movieplex');
INSERT INTO movies (title) VALUES ('Avengers'), ('Inception');
INSERT INTO shows (theater_id, movie_id, show_time) VALUES (1,1,'2025-10-20 18:00:00'), (2,2,'2025-10-21 20:00:00');
INSERT INTO bookings (show_id, customer_name, seats) VALUES (1,'Alice',2), (2,'Bob',3);
