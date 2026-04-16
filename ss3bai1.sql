create database ss3;
use ss3;
  create table products (
  productId int primary key,
  productName varchar(100),
  category varchar(50),
  originalPrice decimal(18,2)
  );
  insert into products (productId,productName,category,originalPrice )
  value
(1, 'iPhone 15', 'Electronics', 20000000),
(2, 'Samsung Refrigerator', 'Electronics', 15000000),
(3, 'Water Spinach', 'Food', 1000000), -- Sửa lại giá mớ rau cho thực tế tí nhé
(4, 'Filtered Fresh Milk 4', 'Food', 28000);
  update products
  set originalPrice = originalPrice*0.9
  where category = 'Electronics';