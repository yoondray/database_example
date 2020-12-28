# tb1_admin.sql

create table tb1_admin (
  admin_id varchar(20) not null,
  admin_pw varchar(30) not null,
  admin_name varchar(20) not null,
  admin_birth varchar(8) not null,
  admin_email varchar(40) not null,
 	regiDate datetime default current_timestamp,
  updateDate datetime default current_timestamp
);
  

