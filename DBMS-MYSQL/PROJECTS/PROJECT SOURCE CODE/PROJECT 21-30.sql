-- =========================================
-- PROJECT 21: Gym Membership System
-- =========================================
CREATE DATABASE IF NOT EXISTS project21_gym;
USE project21_gym;

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(50)
);

CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    start_date DATE,
    end_date DATE,
    type VARCHAR(50),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO members (member_name) VALUES ('Alice'),('Bob');
INSERT INTO subscriptions (member_id, start_date, end_date, type) VALUES (1,'2025-10-01','2026-03-31','Annual'),(2,'2025-10-05','2025-12-31','Quarterly');
INSERT INTO payments (member_id, amount, payment_date) VALUES (1,500,'2025-10-01'),(2,150,'2025-10-05');

-- =========================================
-- PROJECT 22: Online Shopping Cart
-- =========================================
CREATE DATABASE IF NOT EXISTS project22_shoppingcart;
USE project22_shoppingcart;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50)
);

CREATE TABLE cart (
    cart_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO products (product_name, price) VALUES ('Laptop',800),('Mouse',20);
INSERT INTO customers (customer_name) VALUES ('Alice'),('Bob');
INSERT INTO cart (customer_id, product_id, quantity) VALUES (1,1,1),(2,2,2);
INSERT INTO orders (customer_id, order_date) VALUES (1,'2025-10-15'),(2,'2025-10-16');

-- =========================================
-- PROJECT 23: Hospital Appointment Scheduler
-- =========================================
CREATE DATABASE IF NOT EXISTS project23_hospitalappt;
USE project23_hospitalappt;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(50)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(50)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

INSERT INTO patients (patient_name) VALUES ('Alice'),('Bob');
INSERT INTO doctors (doctor_name) VALUES ('Dr. Smith'),('Dr. Jones');
INSERT INTO appointments (patient_id, doctor_id, appointment_date) VALUES (1,1,'2025-10-20'),(2,2,'2025-10-21');

-- =========================================
-- PROJECT 24: School Timetable System
-- =========================================
CREATE DATABASE IF NOT EXISTS project24_timetable;
USE project24_timetable;

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(50)
);

CREATE TABLE classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(50)
);

CREATE TABLE schedule (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    class_id INT,
    schedule_date DATE,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

INSERT INTO teachers (teacher_name) VALUES ('Mr. Smith'),('Ms. Johnson');
INSERT INTO classes (class_name) VALUES ('Math'),('Science');
INSERT INTO schedule (teacher_id, class_id, schedule_date) VALUES (1,1,'2025-10-20'),(2,2,'2025-10-21');

-- =========================================
-- PROJECT 25: Ticket Reservation for Events
-- =========================================
CREATE DATABASE IF NOT EXISTS project25_events;
USE project25_events;

CREATE TABLE events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(50),
    event_date DATE
);

CREATE TABLE seats (
    seat_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    seat_number VARCHAR(10),
    available ENUM('Yes','No') DEFAULT 'Yes',
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    customer_name VARCHAR(50),
    seat_id INT,
    FOREIGN KEY (event_id) REFERENCES events(event_id),
    FOREIGN KEY (seat_id) REFERENCES seats(seat_id)
);

INSERT INTO events (event_name, event_date) VALUES ('Concert','2025-11-01'),('Play','2025-11-05');
INSERT INTO seats (event_id, seat_number) VALUES (1,'A1'),(1,'A2'),(2,'B1'),(2,'B2');
INSERT INTO bookings (event_id, customer_name, seat_id) VALUES (1,'Alice',1),(2,'Bob',3);

-- =========================================
-- PROJECT 26: Customer Feedback System
-- =========================================
CREATE DATABASE IF NOT EXISTS project26_feedback;
USE project26_feedback;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50)
);

CREATE TABLE feedback (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    rating INT,
    comments VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_name) VALUES ('Alice'),('Bob');
INSERT INTO products (product_name) VALUES ('Laptop'),('Mouse');
INSERT INTO feedback (customer_id, product_id, rating, comments) VALUES (1,1,5,'Excellent'),(2,2,4,'Good');

-- =========================================
-- PROJECT 27: Library Fine Management
-- =========================================
CREATE DATABASE IF NOT EXISTS project27_libraryfine;
USE project27_libraryfine;

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100)
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

CREATE TABLE fines (
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    borrow_id INT,
    fine_amount DECIMAL(10,2),
    FOREIGN KEY (borrow_id) REFERENCES borrow(borrow_id)
);

INSERT INTO books (title) VALUES ('Harry Potter'),('1984');
INSERT INTO members (member_name) VALUES ('Alice'),('Bob');
INSERT INTO borrow (book_id, member_id, borrow_date, return_date) VALUES (1,1,'2025-10-01','2025-10-12'),(2,2,'2025-10-02',NULL);
INSERT INTO fines (borrow_id, fine_amount) VALUES (1,5.00);

-- =========================================
-- PROJECT 28: Inventory Reorder System
-- =========================================
CREATE DATABASE IF NOT EXISTS project28_inventoryreorder;
USE project28_inventoryreorder;

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    supplier_id INT,
    stock INT,
    reorder_level INT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

INSERT INTO suppliers (supplier_name) VALUES ('Supplier A'),('Supplier B');
INSERT INTO products (product_name, supplier_id, stock, reorder_level) VALUES ('Laptop',1,5,10),('Mouse',2,50,20);

-- =========================================
-- PROJECT 29: Online Quiz System
-- =========================================
CREATE DATABASE IF NOT EXISTS project29_quiz;
USE project29_quiz;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);

CREATE TABLE quizzes (
    quiz_id INT PRIMARY KEY AUTO_INCREMENT,
    quiz_name VARCHAR(50)
);

CREATE TABLE questions (
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    quiz_id INT,
    question_text VARCHAR(255),
    marks INT,
    FOREIGN KEY (quiz_id) REFERENCES quizzes(quiz_id)
);

CREATE TABLE scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    quiz_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(quiz_id)
);

INSERT INTO students (student_name) VALUES ('Alice'),('Bob');
INSERT INTO quizzes (quiz_name) VALUES ('Math Quiz');
INSERT INTO questions (quiz_id, question_text, marks) VALUES (1,'2+2=?',5),(1,'5*3=?',10);
INSERT INTO scores (student_id, quiz_id, marks_obtained) VALUES (1,1,15),(2,1,12);

-- =========================================
-- PROJECT 30: JSON Data Storage Example
-- =========================================
CREATE DATABASE IF NOT EXISTS project30_json;
USE project30_json;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    profile JSON
);

INSERT INTO users (name, profile) VALUES
('Alice','{"email":"alice@example.com","phone":"1234567890"}'),
('Bob','{"email":"bob@example.com","phone":"0987654321"}');
