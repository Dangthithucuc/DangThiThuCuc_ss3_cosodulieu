use ss3;
create table shippers (
 shipperId int primary key auto_increment,
 shipperName varchar(255),
 phone varchar(20)
 );
  insert into shippers (shipperName, Phone)
  values ('Giao Hàng Nhanh', '0901234567');
  insert into shippers (shipperName, Phone)
  values ('Viettel Post', '0988776655');
  