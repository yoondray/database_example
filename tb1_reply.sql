create table tb1_reply(
reno int auto_increment primary key,
bno int not null,
replyText varchar(500) not null,
replyPpl varchar(50) not null,
replyDate datetime default current_timestamp,
reupDate datetime default current_timestamp
);

alter table tb1_reply add constraint fk_reply_board 
foreign key(bno) references tb1_board(bno);
