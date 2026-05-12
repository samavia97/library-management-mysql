create database library_managment;
use library_managment;
CREATE TABLE book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    category VARCHAR(50),
    publisher VARCHAR(100),
    quantity INT,
    status VARCHAR(20)
);
CREATE TABLE student (
 student_id INT PRIMARY KEY,
 student_name VARCHAR(100),
 department VARCHAR(50),
 semester VARCHAR(20),
 contact_number VARCHAR(15),
 address VARCHAR(150)
 );
 CREATE TABLE issue_book (
    issue_id INT PRIMARY KEY,
    issue_date DATE,
    return_date DATE,
    student_id INT,
    book_id INT,
    fine_amount DECIMAL(10,2),

    FOREIGN KEY (student_id)
    REFERENCES student(student_id),

    FOREIGN KEY (book_id)
    REFERENCES book(book_id)
);
 INSERT INTO book VALUES
(101, 'Database Systems', 'Korth', 'Education', 'Oxford', 10, 'Available'),

(102, 'Python Basics', 'John Smith', 'Programming', 'Pearson', 5, 'Available');
SELECT * FROM book;

INSERT INTO student VALUES
(1, 'Ali Khan', 'BSCS', '4th', '03001234567', 'Karachi'),
(2, 'Sara Ahmed', 'BBA', '2nd', '03112223344', 'Lahore');
SELECT * FROM student;

INSERT INTO issue_book VALUES
(1, '2026-05-01', '2026-05-10', 1, 101, 0.00);
SELECT * FROM issue_book;
