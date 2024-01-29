select * from studentenquiry

create table courseallotment(sid int identity(1,1) primary key,sname varchar(20) not null,scourse varchar(20) not null,cfee int not null,feetype varchar(40) not null,fname varchar(20)not null,fhandlesub varchar(20) not null,sdoj date not null)

create table paymentdetails(sid int foreign key references courseallotment(sid),sname varchar(20) not null,scourse varchar(20) not null,fullpayorinstall int not null,installment1 int,doinstallment1 date,installment2 int,installment3 int,pstatus varchar(20) not null,totalamt decimal not null)
alter table paymentdetails alter column fullpayorinstall varchar(20)
create table faculty(fid int identity(1,1) primary key,fname varchar(20) not null,sid int foreign key references courseallotment(sid),sname varchar(20) not null,scourse varchar(20) not null)

alter table courseallotment add fid int references faculty(fid)

select * from courseallotment
create proc insert_enquiry
(@sname varchar(20),
@sphone int,
@saddress varchar(50),
@semail varchar(30),
@course varchar(30),
@reference varchar(20),
@other varchar(20))
as begin
	insert into studentenquiry values(@sname,@sphone,@saddress,@semail,@course,@reference,@other)
end

create proc course_allot_insert
(@sname varchar(20),
@scourse varchar(30),
@cfee money,
@feetype varchar(40),
@fname varchar(20),
@fhandlesub varchar(30),
@sdoj date,
@fid int)
as begin
	insert into courseallotment(sname,scourse,cfee,feetype,fname,fhandlesub,sdoj,fid) values(@sname,@scourse,@cfee,@feetype,@fname,@fhandlesub,@sdoj,@fid)
end

insert into faculty(fname,sname,scourse) values('Ramesh','Kumar','Java')

select * from courseallotment
select * from faculty
select * from paymentdetails

create proc paymentdetails_insert2
(@sid int,
@sname varchar(20),
@scourse varchar(30),
@fullpayorinstall varchar(15),
@installment1 money,
@doinstallment1 date,
@pstatus varchar(20),
@totalamt money)
as begin
	insert into paymentdetails(sid,sname,scourse,fullpayorinstall,installment1,pstatus,totalamt,doinstallment1) values(@sid,@sname,@scourse,@fullpayorinstall,@installment1,@pstatus,@totalamt,@doinstallment1)
end

create proc installment_pay
as begin
	insert ininstallment1,installment2,installment3
end



create proc paymentdetails_update
(@sid int,
@sname varchar(20),
@scourse varchar(30),
@fullpayorinstall varchar(15),
@installment1 money,
@installment2 money,
@installment3 money,
@pstatus varchar(20),
@totalamt money)
as begin
	update paymentdetails set sname=@sname,scourse=@scourse,fullpayorinstall=@fullpayorinstall,installment1=@installment1,installment2=@installment2,installment3=@installment3,pstatus=@pstatus,totalamt=@totalamt where sid =@sid
end


create proc paymentdetails_update2
(@sid int,
@sname varchar(20),
@scourse varchar(30),
@fullpayorinstall varchar(15),
@pstatus varchar(20),
@totalamt money)
as begin
	update paymentdetails set sname=@sname,scourse=@scourse,fullpayorinstall=@fullpayorinstall,pstatus=@pstatus,totalamt=@totalamt where sid =@sid
end



create proc insert_faculty
(@fname varchar(20),
@sid int,
@sname varchar(20),
@scourse varchar(30))
as begin
	insert into faculty(fname,sid,sname,scourse) values(@fname,@sid,@sname,@scourse)
end

create proc update_faculty
(@fid int,
@fname varchar(20),
@sid int,
@sname varchar(20),
@scourse varchar(30))
as begin
	update faculty set fname=@fname,sid=@sid,sname=@sname,scourse=@scourse where fid=@fid
end

create table user_data(username varchar(20),pwd varchar(20),confirm_pwd varchar(20),email varchar(40),phoneno bigint)

create proc register
(@username varchar(20),
@pwd varchar(20),
@confirm_pwd varchar(20),
@email varchar(40),
@phoneno bigint)
as begin
	insert into user_data values(@username,@pwd,@confirm_pwd,@email,@phoneno)
end

create proc login
(@username varchar(20),
@pwd varchar(20))
as begin
	
	select * from user_data where username = @username and pwd = @pwd
end

select * from studentenquiry
select * from faculty
select * from courseallotment
select * from paymentdetails

create table course(coursename varchar(20),price int)

insert into course values
('Java',25000)


create proc update_paydate
(@sid int,
@doinstallment1 date,
@doinstallment2 date,
@doinstallment3 date)
as begin
	update paymentdetails set doinstallment1=@doinstallment1,doinstallment2=@doinstallment2,doinstallment3=@doinstallment3 where sid=@sid
end


select * from paymentdetails
alter table paymentdetails add doinstallment2 date
alter table paymentdetails add doinstallment3 date

create table paymentdetails(sid int foreign key references courseallotment(sid),sname varchar(20) not null,scourse varchar(20) not null,fullpayorinstall int not null,installment1 int,doinstallment1 date,installment2 int,installment3 int,pstatus varchar(20) not null,totalamt decimal not null,doinstallment2 date,doinstallment3 date)

create proc install2
(@sid int,
@installment2 int,
@doinstallment2 date)
as begin
	update paymentdetails set installment2=@installment2,doinstallment2=@doinstallment2 where sid=@sid
end



create proc install3
(@sid int,
@installment3 int,
@doinstallment3 date)
as begin
	update paymentdetails set installment3=@installment3,doinstallment3=@doinstallment3 where sid=@sid
end
