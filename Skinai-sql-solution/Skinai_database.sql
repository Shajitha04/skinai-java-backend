-- Database: skinai_db

CREATE DATABASE IF NOT EXISTS skinai_db;
USE skinai_db;

-- Table: users
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: images
CREATE TABLE images (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    image_url VARCHAR(255) NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Table: diagnoses
CREATE TABLE diagnoses (
    diagnosis_id INT AUTO_INCREMENT PRIMARY KEY,
    image_id INT,
    condition_name VARCHAR(100),
    confidence_score DECIMAL(5,2),
    diagnosed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (image_id) REFERENCES images(image_id) ON DELETE CASCADE
);

-- Table: activity_logs
CREATE TABLE activity_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(100),
    log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Sample Insert
INSERT INTO users (full_name, email, password) VALUES 
('John Doe', 'john@example.com', 'encryptedpassword');

-- Sample Select
SELECT u.full_name, d.condition_name, d.confidence_score
FROM users u
JOIN images i ON u.user_id = i.user_id
JOIN diagnoses d ON i.image_id = d.image_id;
