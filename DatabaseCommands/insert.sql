use BookKing;

delete from orders;
delete from book;
delete from customer;
delete from book_Type;
delete from publisher;
delete from author;
delete from warehouse;

--CHARLES DICKENS 1
INSERT INTO	publisher 
VALUES('Pearson','80 Strand London, UK',02070102000);
--find more publishers here: http://www.publishersweekly.com/pw/by-topic/industry-news/financial-reporting/article/58211-the-global-60-the-world-s-largest-book-publishers-2013.html

--Enter random authors, but corresponding birthplace and any book(s) he is author of.
INSERT INTO author
VALUES('Charles Dickens','Landport, Hampshire, England');

--Enter team member details for beta testing
INSERT INTO customer
VALUES('Ayush Soni','ayushsoni.in@gmail.com','CG-78, Salt Lake, Kolkata',09901363109);


INSERT INTO warehouse
VALUES('KOL700091',03340047967,'Golden Harbour, Kolkata');
INSERT INTO warehouse
VALUES('MUM20459',09870108708,'Famous Book Stall, Mumbai');
INSERT INTO warehouse
VALUES('DEL103041',05689041917,'Misra Book Depot, Delhi');

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(599,8353957105,'David Copperfield',1850,'Pearson','Charles Dickens');

insert into Book values(9781783220120,8353957105,'KOL700091');
insert into Book values(9781783220121,8353957105,'DEL103041');
insert into Book values(9781783220122,8353957105,'KOL700091');
insert into Book values(9781783220123,8353957105,'DEL103041');
insert into Book values(9781783220124,8353957105,'MUM20459');

--use random strings for orderID
INSERT INTO orders
VALUES('10112IQ91RS',9781783220120,'ayushsoni.in@gmail.com');

--CHARLES DICKENS 2
--Enter team member details for beta testing
INSERT INTO customer
VALUES('Saksham Garg','garg.saksham@yahoo.com','Flat no. 608, HEWO, Gurgaon',08861188776);

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(799,9873954505,'Holiday Romance',1868,'Pearson','Charles Dickens');

insert into Book values(9884783123120,9873954505,'DEL103041');
insert into Book values(9884783123121,9873954505,'DEL103041');
insert into Book values(9884783123122,9873954505,'KOL700091');
insert into Book values(9884783123123,9873954505,'KOL700091');
insert into Book values(9884783123124,9873954505,'MUM20459');
insert into Book values(9884783123125,9873954505,'MUM20459');

--use random strings for orderID
INSERT INTO orders
VALUES('40232ID91TS',9884783123120,'garg.saksham@yahoo.com');


--CHARLES DICKENS 3


INSERT INTO	publisher 
VALUES('Reed Elsevier','461 Bourke Street, AUSTRALIA',610396913344);
--find more publishers here: http://www.publishersweekly.com/pw/by-topic/industry-news/financial-reporting/article/58211-the-global-60-the-world-s-largest-book-publishers-2013.html

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(599,8354907181,'Hunted Down',1860,'Reed Elsevier','Charles Dickens');

insert into Book values(6791753240164,8354907181,'KOL700091');
insert into Book values(6791753240165,8354907181,'KOL700091');
insert into Book values(6791753240166,8354907181,'MUM20459');
insert into Book values(6791753240167,8354907181,'MUM20459');
insert into Book values(6791753240168,8354907181,'DEL103041');
insert into Book values(6791753240169,8354907181,'DEL103041');


--CHARLES DICKENS 4
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(1099,8902207381,'Drinking with Dickens',1980,'Reed Elsevier','Charles Dickens');

insert into Book values(9991751220174,8902207381,'DEL103041');
insert into Book values(9991751220175,8902207381,'DEL103041');
insert into Book values(9991751220176,8902207381,'MUM20459');
insert into Book values(9991751220177,8902207381,'MUM20459');
insert into Book values(9991751220178,8902207381,'MUM20459');
insert into Book values(9991751220179,8902207381,'DEL103041');


--JANE AUSTEN 1
--Enter random authors, but corresponding birthplace and any book(s) he is author of.
INSERT INTO author
VALUES('Jane Austen','Chawton, Alton, Hampshire, England');

--Enter team member details for beta testing
INSERT INTO customer
VALUES('Reuben John','reubenv.john@gmail.com','Alhamra Tower, Kuwait',09876543210);

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(899,5453152104,'Pride and Prejudice',1813,'Pearson','Jane Austen');

insert into Book values(5411782460120,5453152104,'MUM20459');
insert into Book values(5411782460121,5453152104,'DEL103041');
insert into Book values(5411782460122,5453152104,'DEL103041');
insert into Book values(5411782460123,5453152104,'DEL103041');
insert into Book values(5411782460124,5453152104,'KOL700091');

--JANE AUSTEN 2
INSERT INTO	publisher 
VALUES('Thomson Reuters','1500 Spring Garden Street, Philadelphia',18003364474);
--find more publishers here: http://www.publishersweekly.com/pw/by-topic/industry-news/financial-reporting/article/58211-the-global-60-the-world-s-largest-book-publishers-2013.html

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(999,5398192171,'Persuasion',1840,'Thomson Reuters','Jane Austen');

insert into Book values(5419752461122,5398192171,'MUM20459');
insert into Book values(5419752461123,5398192171,'KOL700091');
insert into Book values(5419752461124,5398192171,'KOL700091');
insert into Book values(5419752461125,5398192171,'KOL700091');
insert into Book values(5419752461126,5398192171,'KOL700091');
insert into Book values(5419752461127,5398192171,'DEL103041');
insert into Book values(5419752461128,5398192171,'DEL103041');

--JANE AUSTEN 3
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(499,5248192270,'Emma',1818,'Thomson Reuters','Jane Austen');

insert into Book values(5418851351732,5248192270,'MUM20459');
insert into Book values(5418851351733,5248192270,'MUM20459');
insert into Book values(5418851351734,5248192270,'DEL103041');
insert into Book values(5418851351735,5248192270,'DEL103041');
insert into Book values(5418851351736,5248192270,'KOL700091');


--JANE AUSTEN 4
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(649,5345882110,'Sense and Sensibility',1828,'Pearson','Jane Austen');

insert into Book values(5418823987732,5345882110,'DEL103041');
insert into Book values(5418823987733,5345882110,'KOL700091');
insert into Book values(5418823987734,5345882110,'KOL700091');
insert into Book values(5418823987735,5345882110,'MUM20459');
insert into Book values(5418823987736,5345882110,'DEL103041');




-- JEFFREY ARCHER 1
INSERT INTO	publisher 
VALUES('Wolters Kluwer','Alphen aan den Rijn, Netherlands', 31172641400);

--Enter random authors, but corresponding birthplace and any book(s) he is author of.
INSERT INTO author
VALUES('Jeffrey Archer','London, United Kingdom');

--Enter team member details for beta testing
INSERT INTO customer
VALUES('Mansi Somani','mansisomani111@gmail.com','Hyderabad',07022020100);

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(1299,2673097005,'Grass Is Always Greener',2000,'Wolters Kluwer','Jeffrey Archer');

insert into Book values(2733383230120,2673097005,'KOL700091');
insert into Book values(2733383230121,2673097005,'KOL700091');
insert into Book values(2733383230122,2673097005,'DEL103041');
insert into Book values(2733383230123,2673097005,'DEL103041');
insert into Book values(2733383230124,2673097005,'DEL103041');

--use random strings for orderID
INSERT INTO orders
VALUES('20782DQ51LS',2733383230120,'mansisomani111@gmail.com');


-- JEFFREY ARCHER 2
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(1299,2673577115,'Prison Diary',2002,'Wolters Kluwer','Jeffrey Archer');

insert into Book values(2777383098120,2673577115,'KOL700091');
insert into Book values(2777383098121,2673577115,'DEL103041');
insert into Book values(2777383098122,2673577115,'DEL103041');
insert into Book values(2777383098123,2673577115,'KOL700091');
insert into Book values(2777383098124,2673577115,'KOL700091');


-- JEFFREY ARCHER 3
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(1149,2098556715,'The First Miracle',1994,'Pearson','Jeffrey Archer');

insert into Book values(2775673888120,2098556715,'DEL103041');
insert into Book values(2775673888121,2098556715,'KOL700091');
insert into Book values(2775673888122,2098556715,'KOL700091');
insert into Book values(2775673888123,2098556715,'MUM20459');
insert into Book values(2775673888124,2098556715,'MUM20459');


-- JEFFREY ARCHER 4
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(2149,2011599915,'First Among Equals',2003,'Pearson','Jeffrey Archer');

insert into Book values(2788873123128,2011599915,'DEL103041');
insert into Book values(2788873123129,2011599915,'MUM20459');
insert into Book values(2788873123130,2011599915,'MUM20459');
insert into Book values(2788873123131,2011599915,'KOL700091');
insert into Book values(2788873123132,2011599915,'KOL700091');


-- JEFFREY ARCHER 5
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(1999,2034359915,'The Prodigal Daughter',2011,'Pearson','Jeffrey Archer');

insert into Book values(2846873123100,2034359915,'DEL103041');
insert into Book values(2846873123101,2034359915,'KOL700091');
insert into Book values(2846873123102,2034359915,'KOL700091');
insert into Book values(2846873123103,2034359915,'MUM20459');
insert into Book values(2846873123104,2034359915,'DEL103041');




--Robert Dugoni 1
--Enter random authors, but corresponding birthplace and any book(s) he is author of.
INSERT INTO author
VALUES('Robert Dugoni','Idaho, USA');

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(749,1245553105,'In The Clearing',2005,'Thomson Reuters','Robert Dugoni');

insert into Book values(1221783320127,1245553105,'MUM20459');
insert into Book values(1221783320128,1245553105,'MUM20459');
insert into Book values(1221783320129,1245553105,'KOL700091');
insert into Book values(1221783320130,1245553105,'DEL103041');
insert into Book values(1221783320131,1245553105,'DEL103041');


--Robert Dugoni 2

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(849,1247890052,'The Jury Master',2006,'Thomson Reuters','Robert Dugoni');

insert into Book values(1299983555127,1247890052,'MUM20459');
insert into Book values(1299983555127,1247890052,'MUM20459');
insert into Book values(1299983555127,1247890052,'DEL103041');
insert into Book values(1299983555127,1247890052,'DEL103041');
insert into Book values(1299983555127,1247890052,'DEL103041');


--Robert Dugoni 3

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(1549,1233001152,'The Final Breath',2015,'Pearson','Robert Dugoni');

insert into Book values(1299123512230,1233001152,'MUM20459');
insert into Book values(1299123512231,1233001152,'KOL700091');
insert into Book values(1299123512232,1233001152,'KOL700091');
insert into Book values(1299123512233,1233001152,'MUM20459');
insert into Book values(1299123512234,1233001152,'KOL700091');






--DAN BROWN 1
--Enter random authors, but corresponding birthplace and any book(s) he is author of.
INSERT INTO author
VALUES('Dan Brown','Dan Brown Inc. , New York');

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(2599,4113227105,'Inferno',2013,'Pearson','Dan Brown');

insert into Book values(4441783110199,4113227105,'MUM20459');
insert into Book values(4441783110200,4113227105,'MUM20459');
insert into Book values(4441783110201,4113227105,'MUM20459');
insert into Book values(4441783110202,4113227105,'MUM20459');

--DAN BROWN 2
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(2000,4225527007,'The Da Vinci Code',2003,'Pearson','Dan Brown');

insert into Book values(4991733220007,4225527007,'MUM20459');
insert into Book values(4991733220008,4225527007,'MUM20459');
insert into Book values(4991733220009,4225527007,'KOL700091');
insert into Book values(4991733220010,4225527007,'KOL700091');


--DAN BROWN 3
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(2500,4735512117,'Angels and Demons',2000,'Reed Elsevier','Dan Brown');

insert into Book values(4151535521107,4735512117,'KOL700091');
insert into Book values(4151535521108,4735512117,'MUM20459');
insert into Book values(4151535521109,4735512117,'MUM20459');
insert into Book values(4151535521110,4735512117,'KOL700091');
insert into Book values(4151535521110,4735512117,'KOL700091');

--DAN BROWN 4
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(899,4668899110,'The Lost Symbol',2009,'Reed Elsevier','Dan Brown');

insert into Book values(4298735567107,4668899110,'KOL700091');
insert into Book values(4298735567108,4668899110,'DEL103041');
insert into Book values(4298735567109,4668899110,'DEL103041');
insert into Book values(4298735567110,4668899110,'DEL103041');
insert into Book values(4298735567111,4668899110,'KOL700091');





--AGATHA CHRISTIE 1
--Enter random authors, but corresponding birthplace and any book(s) he is author of.
INSERT INTO author
VALUES('Agatha Christie','Devon, England');

--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(649,3343952175,'Five Little Pigs',1943,'Pearson','Agatha Christie');

INSERT INTO book
VALUES(3781713780122,3343952175,'KOL700091');
INSERT INTO book
VALUES(3781713780123,3343952175,'KOL700091');
INSERT INTO book
VALUES(3781713780124,3343952175,'KOL700091');
INSERT INTO book
VALUES(3781713780125,3343952175,'KOL700091');



--AGATHA CHRISTIE 2
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(649,3563998170,'Endless Night',1967,'Pearson','Agatha Christie');

INSERT INTO book
VALUES(3141003230008,3563998170,'KOL700091');
INSERT INTO book
VALUES(3141003230009,3563998170,'KOL700091');
INSERT INTO book
VALUES(3141003230010,3563998170,'KOL700091');
INSERT INTO book
VALUES(3141003230011,3563998170,'KOL700091');




--AGATHA CHRISTIE 3
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(899,3555998172,'And Then There Were None',1939,'Wolters Kluwer','Agatha Christie');

INSERT INTO book
VALUES(3007001239808,3555998172,'MUM20459');
INSERT INTO book
VALUES(3007001239809,3555998172,'MUM20459');
INSERT INTO book
VALUES(3007001239810,3555998172,'MUM20459');
INSERT INTO book
VALUES(3007001239811,3555998172,'MUM20459');



--AGATHA CHRISTIE 4
--isbn values can be found for any given book
INSERT INTO book_Type
VALUES(899,3654912156,'A Murder Is Announced',1950,'Wolters Kluwer','Agatha Christie');

INSERT INTO book
VALUES(3907987239111,3654912156,'MUM20459');
INSERT INTO book
VALUES(3907987239112,3654912156,'MUM20459');
INSERT INTO book
VALUES(3907987239113,3654912156,'MUM20459');
INSERT INTO book
VALUES(3907987239114,3654912156,'MUM20459');
