select * from login
sp_help login

create proc login_user
(@username varchar(20),
@pwd varchar(20))
as begin
	select username,pwd from login where username=@username and pwd=@pwd
end

create proc register
(@username varchar(20),
@pwd varchar(20),
@confirmpwd varchar(20),
@address varchar(50),
@email varchar(30),
@phoneno bigint)
as begin
	insert into login values(@username,@pwd,@confirmpwd,@address,@email,@phoneno)
end

select * from tblFood

create proc add_item
(@fname varchar(20),
@ftype varchar(1),
@fprice money,
@favailable varchar(10))
as begin
	insert into tblFood values(@fname,@ftype,@fprice,@favailable)
end

create proc update_item
(@fid int,
@fname varchar(20),
@ftype varchar(1),
@fprice money,
@favailable varchar(10))
as begin
	update tblFood set fname = @fname,ftype=@ftype,fprice = @fprice,favailable=@favailable where fid = @fid
end

SELECT fprice from tblfood where fname='dosa'

select * from tblbilling

create proc billing
(@billno int,
@fid int,
@price money,
@qty int,
@amount money)
as begin
	insert into tblbilling(Billno,Fid,Price,Quantity,Amount) values(@billno,@fid,@price,@qty,@amount)
end

select * from tblbilling

insert into tblbilling values(1545,'05-06-2023',2,30,2,60)