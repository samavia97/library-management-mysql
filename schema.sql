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