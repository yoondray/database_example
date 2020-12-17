use example;

create table tb1_member(
    id varchar(20)  primary key,
    pw varchar(30),
    name varchar(20),
    birth varchar(8),
    email varchar(40),
	regiDate datetime default current_timestamp,
    updateDate datetime default current_timestamp
);

select id, name, birth, email, regiDate
from (
		select @rownum:=@rownum+1 as rownum, b.id, id, name, birth, email, regiDate
        from (select @rownum:=0) as tmp, tb1_member as b
        order by bno desc 
	) as mblistPage
    where rownum between '0' and '5';


insert tb1_member(id,pw,name,birth,email)
values('lovmesalad',22222,'sam',980404,'lovmesalad@salody.com');

insert tb1_member(id,pw,name,birth,email)
values('eatEnjoy',444,'Joey Kim',870425,'eatJoey@salody.com');

insert tb1_member(id,pw,name,birth,email)
values('KarmaSally',797979,'Sally',960901,'karmasally@salody.com');

insert tb1_member(id,pw,name,birth,email)
values('dietwithme',413,'diana',000413,'dietqueen@salody.com');

insert into tb1_member (id,pw,name,birth,email)
values ('Yoo','2333','유재석','660915','Yoos
oon@salody.com');

insert into tb1_member (id,pw,name,birth,email)
values ('Jonathan','2333','조나단','970504','Yonathan@salody.com');

insert into tb1_member(id,pw,name,birth,email)
values ('April','0416','김시월','150416','seeworld@salody.com');
