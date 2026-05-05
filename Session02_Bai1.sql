DROP DATABASE IF EXISTS session02;
CREATE DATABASE session02;
USE session02;

/*
Phân tích
- Ko có lỗi nhưng thiếu tính tối ưu hóa
- Thiếu auto_increment cho khóa chính

CREATE TABLE PRODUCTS (
		ID INT PRIMARY KEY,
        ProductName VARCHAR(255),
        Price DECIMAL(18,2),
        Description TEXT
);
*/

CREATE TABLE PRODUCTS (
		ID INT PRIMARY KEY AUTO_INCREMENT,
        ProductName VARCHAR(255) NOT NULL,
        Price DECIMAL(18,2),
        Description TEXT
);