-- Initial database setup for Firebits Course application
-- This file will be executed when the MySQL container starts for the first time

USE firebits_course;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    avatar VARCHAR(500),
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    job VARCHAR(100),
    phone VARCHAR(20),
    company VARCHAR(255),
    learn_time VARCHAR(100),
    average_score DECIMAL(5,2),
    purchased_courses INT DEFAULT 0,
    course_completed INT DEFAULT 0,
    session_id VARCHAR(255) UNIQUE NULL,
    role TINYINT DEFAULT 0,
    email_verified_at TIMESTAMP NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create courses table
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    number_of_lessons INT DEFAULT 0,
    time_required VARCHAR(100),
    image_url VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create user_courses table (for enrollment)
CREATE TABLE IF NOT EXISTS user_course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    lesson_progress DECIMAL(5,2) DEFAULT 0,
    time_progressed INT DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    UNIQUE KEY unique_enrollment (user_id, course_id)
);

-- Create Certificates table
CREATE TABLE IF NOT EXISTS certificates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    issue_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    score VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE
);

-- Create Tags table
CREATE TABLE IF NOT EXISTS tags (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Course_Tags table (many-to-many relationship)
CREATE TABLE IF NOT EXISTS course_tag (
    course_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (course_id, tag_id),
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE
);

-- Insert sample data


-- Users (1 admin, 9 members) - Updated with realistic data

INSERT INTO users (avatar, email, password_hash, first_name, last_name, job, phone, company, learn_time, average_score, purchased_courses, course_completed, role, email_verified_at) VALUES
('https://i.pravatar.cc/150?img=1', 'admin@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'Admin', 'User', 'Administrator', '123-456-7890', 'Admin Co.', '5 hours/week', 95.00, 5, 3, 1, NULL),

('https://i.pravatar.cc/150?img=2', 'user1@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'One', 'Member', '123-456-7891', 'User Co.', '5 hours/week', 85.00, 3, 2, 0, NULL),

('https://i.pravatar.cc/150?img=3', 'user2@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Two', 'Member', '123-456-7892', 'User Co.', '5 hours/week', 80.00, 2, 1, 0, NULL),

('https://i.pravatar.cc/150?img=4', 'user3@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Three', 'Member', '123-456-7893', 'User Co.', '5 hours/week', 75.00, 1, 0, 0, NULL),

('https://i.pravatar.cc/150?img=5', 'user4@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Four', 'Member', '123-456-7894', 'User Co.', '5 hours/week', 70.00, 0, 0, 0, NULL),

('https://i.pravatar.cc/150?img=6', 'user5@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Five', 'Member', '123-456-7895', 'User Co.', '5 hours/week', 65.00, 0, 0, 0, NULL),

('https://i.pravatar.cc/150?img=7', 'user6@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Six', 'Member', '123-456-7896', 'User Co.', '5 hours/week', 60.00, 0, 0, 0, NULL),

('https://i.pravatar.cc/150?img=8', 'user7@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Seven', 'Member', '123-456-7897', 'User Co.', '5 hours/week', 55.00, 0, 0, 0, NULL),

('https://i.pravatar.cc/150?img=9', 'user8@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Eight', 'Member', '123-456-7898', 'User Co.', '5 hours/week', 50.00, 0, 0, 0, NULL),

('https://i.pravatar.cc/150?img=10', 'user9@example.com', '$2b$10$K8QK4K4K4K4K4K4K4K4K4e4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K', 'User', 'Nine', 'Member', '123-456-7899', 'User Co.', '5 hours/week', 45.00, 0, 0, 0, NULL);

-- Tags

INSERT INTO tags (name) VALUES
('Web Development'),
('Data Science'),
('Machine Learning'),
('Mobile Development'),
('Game Development');

-- Courses
INSERT INTO courses (title, description, price, number_of_lessons, time_required, image_url) VALUES
('Learn SvelteKit', 'Comprehensive course on SvelteKit framework.', 49.99, 20, '15 hours', 'https://example.com/images/sveltekit-course.jpg'),
('Mastering Python', 'In-depth Python programming course.', 59.99, 25, '20 hours', 'https://example.com/images/python-course.jpg'),
('Data Science with R', 'Learn data science concepts using R.', 69.99, 30, '25 hours', 'https://example.com/images/r-course.jpg'),
('Mobile App Development', 'Build mobile applications for Android and iOS.', 79.99, 35, '30 hours', 'https://example.com/images/mobile-course.jpg'),
('Game Development Basics', 'Introduction to game development using Unity.', 89.99, 40, '35 hours', 'https://example.com/images/game-course.jpg'),
('Advanced Machine Learning', 'Explore advanced machine learning techniques.', 99.99, 45, '40 hours', 'https://example.com/images/ml-course.jpg'),
('Full-Stack Web Development', 'Become a full-stack web developer.', 109.99, 50, '45 hours', 'https://example.com/images/fullstack-course.jpg'),
('JavaScript Essentials', 'Learn the essentials of JavaScript programming.', 39.99, 15, '10 hours', 'https://example.com/images/js-course.jpg'),
('React for Beginners', 'Get started with React.js framework.', 44.99, 18, '12 hours', 'https://example.com/images/react-course.jpg'),
('Node.js Fundamentals', 'Understand the fundamentals of Node.js.', 54.99, 22, '16 hours', 'https://example.com/images/nodejs-course.jpg'),
('CSS Mastery', 'Master the art of CSS for web design.', 29.99, 12, '8 hours', 'https://example.com/images/css-course.jpg'),
('HTML5 Deep Dive', 'Comprehensive guide to HTML5.', 24.99, 10, '6 hours', 'https://example.com/images/html5-course.jpg');

-- User Course Enrollments
INSERT INTO user_course (user_id, course_id, lesson_progress, time_progressed) VALUES
-- Admin user enrollments (user_id = 1)
(1, 1, 100.00, 15), -- SvelteKit - Completed
(1, 2, 100.00, 20), -- Python - Completed  
(1, 3, 100.00, 25), -- Data Science with R - Completed
(1, 8, 80.00, 8),   -- JavaScript - In Progress
(1, 9, 60.00, 7),   -- React - In Progress

-- Hung Van Nguyen enrollments (user_id = 2)
(2, 1, 65.00, 10),  -- SvelteKit - In Progress (matches member page)
(2, 2, 100.00, 20), -- Python - Completed
(2, 6, 80.00, 32),  -- Machine Learning - In Progress  
(2, 7, 45.00, 20),  -- Full-Stack - In Progress
(2, 8, 100.00, 10), -- JavaScript - Completed
(2, 9, 30.00, 4),   -- React - In Progress (matches member page)
(2, 10, 15.00, 3),  -- Node.js - In Progress (matches member page)
(2, 11, 100.00, 8), -- CSS - Completed
(2, 12, 100.00, 6), -- HTML5 - Completed
(2, 4, 15.00, 5),   -- Mobile App - In Progress (matches member page)
(2, 5, 80.00, 28),  -- Game Development - In Progress (matches member page)
(2, 3, 45.00, 11),  -- Data Science with R - In Progress (matches member page)

-- Alice Johnson enrollments (user_id = 3) 
(3, 2, 100.00, 20), -- Python - Completed
(3, 3, 100.00, 25), -- Data Science with R - Completed
(3, 6, 100.00, 40), -- Machine Learning - Completed
(3, 7, 100.00, 45), -- Full-Stack - Completed
(3, 8, 90.00, 9),   -- JavaScript - Almost Complete
(3, 9, 85.00, 10),  -- React - Almost Complete
(3, 1, 70.00, 11),  -- SvelteKit - In Progress
(3, 10, 50.00, 8),  -- Node.js - In Progress

-- Bob Smith enrollments (user_id = 4)
(4, 8, 100.00, 10), -- JavaScript - Completed
(4, 9, 100.00, 12), -- React - Completed  
(4, 11, 100.00, 8), -- CSS - Completed
(4, 1, 80.00, 12),  -- SvelteKit - In Progress
(4, 7, 60.00, 27),  -- Full-Stack - In Progress
(4, 12, 90.00, 5),  -- HTML5 - Almost Complete

-- Carol Davis enrollments (user_id = 5)
(5, 4, 100.00, 30), -- Mobile App - Completed
(5, 5, 100.00, 35), -- Game Development - Completed
(5, 8, 85.00, 9),   -- JavaScript - Almost Complete
(5, 9, 70.00, 8),   -- React - In Progress

-- David Wilson enrollments (user_id = 6)
(6, 5, 100.00, 35), -- Game Development - Completed
(6, 8, 75.00, 7),   -- JavaScript - In Progress
(6, 9, 60.00, 7),   -- React - In Progress

-- Emma Brown enrollments (user_id = 7)
(7, 11, 100.00, 8), -- CSS - Completed  
(7, 12, 90.00, 5),  -- HTML5 - Almost Complete

-- Frank Garcia enrollments (user_id = 8)
(8, 10, 80.00, 13), -- Node.js - In Progress
(8, 8, 70.00, 7),   -- JavaScript - In Progress

-- Grace Martinez enrollments (user_id = 9)
(9, 3, 60.00, 15),  -- Data Science with R - In Progress

-- Henry Lee enrollments (user_id = 10)
(10, 12, 50.00, 3); -- HTML5 - In Progress

-- Certificates (only for completed courses)
INSERT INTO certificates (user_id, course_id, name, score) VALUES
-- Admin certificates
(1, 1, 'SvelteKit Mastery Certificate', 'A+'),
(1, 2, 'Python Programming Certificate', 'A+'), 
(1, 3, 'Data Science with R Certificate', 'A'),

-- Hung Van Nguyen certificates  
(2, 2, 'Python Programming Certificate', 'A+'),
(2, 8, 'JavaScript Fundamentals Certificate', 'A'),
(2, 11, 'CSS Mastery Certificate', 'A+'),
(2, 12, 'HTML5 Deep Dive Certificate', 'A+'),

-- Alice Johnson certificates
(3, 2, 'Python Programming Certificate', 'A+'),
(3, 3, 'Data Science with R Certificate', 'A'),
(3, 6, 'Advanced Machine Learning Certificate', 'A'),
(3, 7, 'Full-Stack Web Development Certificate', 'A'),

-- Bob Smith certificates
(4, 8, 'JavaScript Fundamentals Certificate', 'A'),
(4, 9, 'React for Beginners Certificate', 'A+'),
(4, 11, 'CSS Mastery Certificate', 'A'),

-- Carol Davis certificates  
(5, 4, 'Mobile App Development Certificate', 'A'),
(5, 5, 'Game Development Basics Certificate', 'A+'),

-- David Wilson certificates
(6, 5, 'Game Development Basics Certificate', 'A'),

-- Emma Brown certificates
(7, 11, 'CSS Mastery Certificate', 'A+');

-- Course Tags relationships
INSERT INTO course_tag (course_id, tag_id) VALUES
-- SvelteKit (course_id = 1) -> Web Development
(1, 1),

-- Python (course_id = 2) -> Data Science, Machine Learning  
(2, 2),
(2, 3),

-- Data Science with R (course_id = 3) -> Data Science, Machine Learning
(3, 2), 
(3, 3),

-- Mobile App Development (course_id = 4) -> Mobile Development
(4, 4),

-- Game Development (course_id = 5) -> Game Development
(5, 5),

-- Machine Learning (course_id = 6) -> Data Science, Machine Learning
(6, 2),
(6, 3),

-- Full-Stack (course_id = 7) -> Web Development  
(7, 1),

-- JavaScript (course_id = 8) -> Web Development
(8, 1),

-- React (course_id = 9) -> Web Development
(9, 1),

-- Node.js (course_id = 10) -> Web Development
(10, 1),

-- CSS (course_id = 11) -> Web Development  
(11, 1),

-- HTML5 (course_id = 12) -> Web Development
(12, 1);

