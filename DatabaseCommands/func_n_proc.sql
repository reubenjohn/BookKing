use BookKing;

go
create procedure randomString(@len int, @r varchar(30) output)
as
begin
		SELECT @r = coalesce(@r, '') +CHAR(
		CASE WHEN r between 0 and 9 THEN 48
		WHEN r between 10 and 35 THEN 55
		ELSE 61 END + r)
		FROM
		master..spt_values
		CROSS JOIN
		(SELECT CAST(RAND(ABS(CHECKSUM(NEWID()))) *61 as int) r) a
		WHERE type = 'P' AND number < 30
end;
go

go
create procedure dbo.purchaseBook
(
@book_id numeric(18,0),
@code varchar(30),
@cust_email varchar(50),
@mresult varchar(50) output
)
as
declare
@availableISBN numeric(18,0),
@availableStock int,
@price numeric(18,0),
@balance numeric(10,3)
begin
	select @availableStock = count(*) from AvailableBook where book_id=@book_id and code=@code
	select top 1 @availableISBN = isbn from AvailableBook where book_id=@book_id and code=@code
	select @price = price from book_Type where book_id=@book_id
	select @balance = balance from customer where customer.cust_email=@cust_email;
	
	if (@availableStock>1)
	begin
		print @balance
		print @price
		if(@balance>=@price)
		begin
			declare @r varchar(30);
			exec dbo.randomString 30, @r output
		
			insert into orders values(@r,@availableISBN,@cust_email);
			update customer set balance=balance-@price where cust_email=@cust_email;
			set @mresult = 'Purchase successful';
		end
		else
		begin
			set @mresult = 'Insufficient funds!';
		end
	end
	else if(@availableStock=0)
	begin
		set @mresult = 'No stock available';
	end
end
go

--declare @res varchar(100)
--begin
--exec purchaseBook 4668899110, 'DEL103041', 'reubenvjohn@gmail.com', @res output
--print @res
--end