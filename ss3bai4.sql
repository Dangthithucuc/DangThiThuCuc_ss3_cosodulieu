use ss3;
CREATE TABLE ORDERS (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    OrderDate DATETIME,
    TotalAmount DECIMAL(18, 2),
    Status VARCHAR(20), -- 'Completed', 'Canceled', 'Pending'
    IsDeleted TINYINT(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO ORDERS (CustomerName, OrderDate, TotalAmount, Status) VALUES
('Nguyễn Văn A', '2023-01-10', 500000, 'Completed'),
('Khách hàng vãng lai', '2023-02-15', 1200000, 'Canceled'),
('Trần Thị B', '2023-05-20', 300000, 'Canceled'),
('Lê Văn C', '2024-01-05', 850000, 'Completed');


UPDATE ORDERS
SET IsDeleted = 1
WHERE Status = 'Canceled';


SELECT * FROM ORDERS 
WHERE Status = 'Completed' AND IsDeleted = 0;