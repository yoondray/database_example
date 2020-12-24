# database_example

bno int,
fileName varchar(100) not null,
uploadPath varchar(100) not null,
uuid varchar(100) primary key,
foreign key(bno) references tb1_board(bno) on update cascade
);
