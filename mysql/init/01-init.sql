-- Initial database setup for Firebits Course application
-- This file will be executed when the MySQL container starts for the first time

USE firebits_course;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create courses table
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    image_url VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create user_courses table (for enrollment)
CREATE TABLE IF NOT EXISTS user_courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    UNIQUE KEY unique_enrollment (user_id, course_id)
);

-- Insert sample data
INSERT INTO courses (title, description, price, image_url) VALUES
('JavaScript Fundamentals', 'Learn the basics of JavaScript programming', 99.99, '/images/js-course.jpg'),
('React Development', 'Build modern web applications with React', 149.99, '/images/react-course.jpg'),
('Node.js Backend', 'Create powerful backend applications with Node.js', 129.99, '/images/nodejs-course.jpg'),
('SvelteKit Full Stack', 'Build full stack applications with SvelteKit', 199.99, '/images/sveltekit-course.jpg');

-- Insert sample user (password is 'password123' hashed)
INSERT INTO users (email, password_hash, first_name, last_name) VALUES
('admin@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'Admin', 'User'),
('user@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'Test', 'User');