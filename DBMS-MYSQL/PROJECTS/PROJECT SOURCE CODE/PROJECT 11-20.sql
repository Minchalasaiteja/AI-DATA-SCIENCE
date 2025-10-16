-- =========================================
-- PROJECT 11: Employee Payroll System
-- =========================================
CREATE DATABASE IF NOT EXISTS project11_payroll;
USE project11_payroll;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE bonuses (
    bonus_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    bonus_amount DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE deductions (
    deduction_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    deduction_amount DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO employees (emp_name, salary) VALUES ('Alice',5000),('Bob',6000);
INSERT INTO bonuses (emp_id, bonus_amount) VALUES (1,500),(2,300);
INSERT INTO deductions (emp_id, deduction_amount) VALUES (1,100),(2,200);

-- =========================================
-- PROJECT 12: Flight Reservation System
-- =========================================
CREATE DATABASE IF NOT EXISTS project12_flight;
USE project12_flight;

CREATE TABLE flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_number VARCHAR(10),
    source VARCHAR(50),
    destination VARCHAR(50)
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_name VARCHAR(50)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_id INT,
    passenger_id INT,
    seat_number VARCHAR(10),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);

INSERT INTO flights (flight_number, source, destination) VALUES ('AI101','Delhi','Mumbai'),('BA202','London','Paris');
INSERT INTO passengers (passenger_name) VALUES ('Alice'),('Bob');
INSERT INTO bookings (flight_id, passenger_id, seat_number) VALUES (1,1,'12A'),(2,2,'14B');

-- =========================================
-- PROJECT 13: E-commerce Order Tracking
-- =========================================
CREATE DATABASE IF NOT EXISTS project13_ecommerce;
USE project13_ecommerce;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    status ENUM('Pending','Shipped','Delivered'),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    shipment_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO customers (customer_name) VALUES ('John'),('Emma');
INSERT INTO orders (customer_id, order_date, status) VALUES (1,'2025-10-10','Pending'),(2,'2025-10-11','Shipped');
INSERT INTO shipments (order_id, shipment_date) VALUES (2,'2025-10-12');

-- =========================================
-- PROJECT 14: Hospital Patient Management
-- =========================================
CREATE DATABASE IF NOT EXISTS project14_hospital;
USE project14_hospital;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(50)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(50),
    specialty VARCHAR(50)
);

CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    treatment_desc VARCHAR(255),
    treatment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
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
INSERT INTO doctors (doctor_name, specialty) VALUES ('Dr. Smith','Cardiology'),('Dr. Jones','Orthopedics');
INSERT INTO treatments (patient_id, doctor_id, treatment_desc, treatment_date) VALUES (1,1,'Checkup','2025-10-10'),(2,2,'X-ray','2025-10-11');
INSERT INTO appointments (patient_id, doctor_id, appointment_date) VALUES (1,1,'2025-10-12'),(2,2,'2025-10-13');

-- =========================================
-- PROJECT 15: Car Rental System
-- =========================================
CREATE DATABASE IF NOT EXISTS project15_carrental;
USE project15_carrental;

CREATE TABLE cars (
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    car_model VARCHAR(50),
    availability ENUM('Yes','No') DEFAULT 'Yes'
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50)
);

CREATE TABLE rentals (
    rental_id INT PRIMARY KEY AUTO_INCREMENT,
    car_id INT,
    customer_id INT,
    rental_start DATE,
    rental_end DATE,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO cars (car_model, availability) VALUES ('Honda Civic','Yes'),('Toyota Corolla','Yes');
INSERT INTO customers (customer_name) VALUES ('Alice'),('Bob');
INSERT INTO rentals (car_id, customer_id, rental_start, rental_end) VALUES (1,1,'2025-10-20','2025-10-22');

-- =========================================
-- PROJECT 16: Online Food Delivery
-- =========================================
CREATE DATABASE IF NOT EXISTS project16_fooddelivery;
USE project16_fooddelivery;

CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_name VARCHAR(50)
);

CREATE TABLE menu (
    menu_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    item_name VARCHAR(50),
    price DECIMAL(10,2),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    restaurant_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

INSERT INTO restaurants (restaurant_name) VALUES ('Pizza Hut'),('Dominos');
INSERT INTO menu (restaurant_id, item_name, price) VALUES (1,'Pepperoni Pizza',12.5),(2,'Margherita Pizza',10.0);
INSERT INTO customers (customer_name) VALUES ('Alice'),('Bob');
INSERT INTO orders (customer_id, restaurant_id, order_date) VALUES (1,1,'2025-10-15'),(2,2,'2025-10-16');

-- =========================================
-- PROJECT 17: Sports Tournament Database
-- =========================================
CREATE DATABASE IF NOT EXISTS project17_sports;
USE project17_sports;

CREATE TABLE teams (
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(50)
);

CREATE TABLE matches (
    match_id INT PRIMARY KEY AUTO_INCREMENT,
    team1_id INT,
    team2_id INT,
    match_date DATE,
    FOREIGN KEY (team1_id) REFERENCES teams(team_id),
    FOREIGN KEY (team2_id) REFERENCES teams(team_id)
);

CREATE TABLE scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    match_id INT,
    team_id INT,
    points INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

INSERT INTO teams (team_name) VALUES ('Team A'),('Team B');
INSERT INTO matches (team1_id, team2_id, match_date) VALUES (1,2,'2025-10-20');
INSERT INTO scores (match_id, team_id, points) VALUES (1,1,3),(1,2,2);

-- =========================================
-- PROJECT 18: College Course Enrollment
-- =========================================
CREATE DATABASE IF NOT EXISTS project18_college;
USE project18_college;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (student_name) VALUES ('Alice'),('Bob');
INSERT INTO courses (course_name) VALUES ('Math'),('Physics');
INSERT INTO enrollments (student_id, course_id) VALUES (1,1),(1,2),(2,1);

-- =========================================
-- PROJECT 19: Hotel Billing System
-- =========================================
CREATE DATABASE IF NOT EXISTS project19_hotelbilling;
USE project19_hotelbilling;

CREATE TABLE guests (
    guest_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_name VARCHAR(50)
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10),
    price DECIMAL(10,2)
);

CREATE TABLE services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE bills (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_id INT,
    room_charge DECIMAL(10,2),
    service_charge DECIMAL(10,2),
    total DECIMAL(10,2),
    FOREIGN KEY (guest_id) REFERENCES guests(guest_id)
);

INSERT INTO guests (guest_name) VALUES ('Alice'),('Bob');
INSERT INTO rooms (room_number, price) VALUES ('101',100),('102',150);
INSERT INTO services (service_name, price) VALUES ('Laundry',20),('Breakfast',15);
INSERT INTO bills (guest_id, room_charge, service_charge, total) VALUES (1,100,35,135),(2,150,15,165);

-- =========================================
-- PROJECT 20: Employee Leave Management
-- =========================================
CREATE DATABASE IF NOT EXISTS project20_leave;
USE project20_leave;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50)
);

CREATE TABLE leave_types (
    leave_type_id INT PRIMARY KEY AUTO_INCREMENT,
    leave_type VARCHAR(50)
);

CREATE TABLE leaves (
    leave_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    leave_type_id INT,
    start_date DATE,
    end_date DATE,
    status ENUM('Pending','Approved','Rejected'),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (leave_type_id) REFERENCES leave_types(leave_type_id)
);

INSERT INTO employees (emp_name) VALUES ('Alice'),('Bob');
INSERT INTO leave_types (leave_type) VALUES ('Sick'),('Casual');
INSERT INTO leaves (emp_id, leave_type_id, start_date, end_date, status) VALUES (1,1,'2025-10-15','2025-10-16','Pending'),(2,2,'2025-10-20','2025-10-22','Approved');

-- =========================================

