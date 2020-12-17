use example;

create table tb1_board(
	bno int auto_increment primary key,
    title varchar(200),
    content varchar(2000),
    writer varchar(50),
    regiDate datetime default current_timestamp,
    updateDate datetime default current_timestamp
    );
    
insert tb1_board(title, content, writer, visit)
values('메뉴-올바른 메뉴선택', '메뉴 중복으로선택 가능합니까 ', 'usr2020', 0);

select *
from (
		select @rownum:=@rownum+1 as rownum, b.*
		from (select @rownum:=0) as tmp, tb1_board as b
		where title like concat('%','메뉴','%') or content like concat('%','메뉴','%')
        order by bno desc
    ) as pagingboard
where rownum>1-1 and rownum<=1*10;
