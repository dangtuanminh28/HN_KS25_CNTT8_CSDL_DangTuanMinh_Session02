DROP DATABASE IF EXISTS session02;
CREATE DATABASE session02;
USE session02;

/*
Giải pháp 1:
Dùng lệnh ALTER TABLE để đổi kiểu dữ liệu từ INT sang VARCHAR

Giải pháp 2:
Thêm một cột mới với kiểu VARCHAR, copy dữ liệu từ cột cũ sang, sau đó mới xóa cột cũ

So sánh:

Tiêu chí    |  Giải pháp 1  |  Giải pháp 2
Độ an toàn      Kém				Cao
Tính ưu tiên	 Ít				Ưu tiên hơn
Tốc độ  		Chậm			Nhanh

--> Chọn giải pháp 2 vì xử lý logic, kiểm tra dữ liệu trước khi thay thế hoàn toàn
*/
CREATE TABLE USERS (
    userID INT PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(50) NOT NULL,
    phone INT
);

CREATE TABLE CUSTOMERS (
    customerID INT PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age > 0)
);

CREATE TABLE ORDERS (
    orderID INT PRIMARY KEY AUTO_INCREMENT,
    orderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    totalAmount DECIMAL(18, 2) NOT NULL,
    customerID INT,
    FOREIGN KEY (customerID) REFERENCES CUSTOMERS(customerID)
);

ALTER TABLE USERS 
ADD COLUMN Phone_New VARCHAR(15) NOT NULL;
ALTER TABLE USERS DROP COLUMN Phone;