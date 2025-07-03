
CREATE DATABASE rto_db;

USE rto_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    password VARCHAR(100),
    address TEXT
);

CREATE TABLE license_applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    type VARCHAR(50),
    status VARCHAR(20),
    date_applied DATE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE vehicle_registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    vehicle_no VARCHAR(20),
    type VARCHAR(50),
    model VARCHAR(100),
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE complaints (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    subject VARCHAR(200),
    message TEXT,
    status VARCHAR(20),
    reply TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(100)
);

INSERT INTO admins (username, password) VALUES ('admin', 'admin123');
