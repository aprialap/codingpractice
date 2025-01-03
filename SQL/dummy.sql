-- Buat database baru
CREATE DATABASE IF NOT EXISTS DummyDatabase;
USE DummyDatabase;

-- Buat tabel departments
CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Buat tabel employees
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL,
    manager_id INT DEFAULT NULL,
    status ENUM('active', 'resign') DEFAULT 'active',
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id) ON DELETE SET NULL
);

-- Buat tabel sales
CREATE TABLE IF NOT EXISTS sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    sale_amount DECIMAL(10, 2) NOT NULL,
    sale_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id) ON DELETE CASCADE
);

-- Tambahkan data dummy untuk tabel departments
INSERT INTO departments (department_name) VALUES
('HR'),
('IT'),
('Finance'),
('Marketing');

-- Tambahkan data dummy untuk tabel employees
INSERT INTO employees (name, department_id, salary, hire_date, manager_id, status) VALUES
('Alice', 1, 5000.00, '2020-01-15', NULL, 'active'),
('Bob', 2, 7000.00, '2019-03-20', NULL, 'active'),
('Charlie', 2, 6000.00, '2021-06-25', 2, 'active'),
('David', 3, 5500.00, '2018-11-10', NULL, 'active'),
('Eve', 4, 4500.00, '2022-09-05', NULL, 'resign'),
('Frank', 4, 4800.00, '2021-12-20', 4, 'active');

-- Tambahkan data dummy untuk tabel sales
INSERT INTO sales (employee_id, sale_amount, sale_date) VALUES
(1, 1500.00, '2023-01-15'),
(2, 2000.00, '2023-02-20'),
(3, 1800.00, '2023-03-05'),
(4, 2500.00, '2023-04-10'),
(5, 1200.00, '2023-05-15');
