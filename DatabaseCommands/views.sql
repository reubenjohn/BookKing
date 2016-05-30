USE BookKing;
go
create view BookStock as
select book_Type.book_id as book_id,
(select count(isbn) from book
where book.book_id=book_Type.book_id
and
book.isbn not in (select isbn from orders)) as availableStock
from book_Type;
go
create view WarehouseBookStock as
select code,ware_phone,ware_address,bt.book_id,
(select count(book.book_id) from book
where book.code=warehouse.code
and
book.book_id=bt.book_id
and
isbn not in (select isbn from orders)) as bookStock
from warehouse,book_Type bt
;
go
create view AvailableWarehouseBookStock as
select * from WarehouseBookStock
where bookStock>0
;
go
create view BookTypeDetails as
select
bt.book_id as book_id,
bt.auth_name,bt.price,bt.pub_name,bt.title,bt.year1,
(select ab.availableStock
from BookStock ab
where ab.book_id=bt.book_id) as availableStock
from book_Type bt
;
go
create view AvailableBookTypeDetails as
select * from BookTypeDetails
where availableStock>0
;
go
create view AvailableBook as
select * from book where isbn not in (select isbn from orders)
;
go
create view OrderedBook as
select book_id,cust_email from book b,orders o
where b.isbn=o.isbn
go