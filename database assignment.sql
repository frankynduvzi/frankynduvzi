use [customers database]
create table customers_table
(
 [customersnumber] int,
 [customersphoneno] char(10),
 [customersname] varchar(32)
)

insert into customers_table (customersnumber, customersphoneno, customersname)
values
('1', '0722123456', 'John Wanyoike'),
('2', '0723456789','Francis Nduva'),
('3', '0721823952','Odera Cindy'),
('4', '0700417894','Nicholus Muchiri'),
('5', '0723672456','Kevin omollo'),
('6', '0711892567','Jane murage'),
('7', '0734678345','Fredrick mutisya'),
('8', '0789234567','Bill olali'),
('9', '0723890367','George obiso'),
('10', '0711279879','Shanice adhiambo'),
('11', '0722679034','Grace ndunda'),
('12', '0712789345','Huddah mathutha'),
('13', '0724678923','Cornelius mutiso'),
('14', '0714567890','Mark maina'),
('15', '0715672355','Haniel  mwangi'),
('16', '0734780133','Paul mbuvi'),
('17', '0723890128','Jackson matee'),
('18', '0723489012','Rose wahome'),
('19', '0789235678','Kanairo nauwo'),
('20', '0723784500','Collins muthoka'),
('21', '0714895699','Ivan mbuta'),
('22', '0712567812','Khadija palma'),
('23', '0756890123','Pauline ray'),
('24', '0723478798','Grace atitio'),
('25', '0712345670','Kevin muuo')
select * from customers_table


/*QUERY ONE
  find customers name starting with'G'  
*/
select customersname from customers_table where customersname like 'G%' 
/*QUERY TWO
find a specific customers phone number eg francis nduva
*/
select customersphoneno from customers_table where customersname like 'Francis Nduva'

create table products_tbl
(
 [productcode] char(3),
 [productname] varchar(10),
 [productprice] int,
)

insert into products_tbl (productcode, productname ,productprice)
values
('A10', 'kenyacane','10'),
('B20', 'pilsner','4'),
('C30', 'tusker','3'),
('F60', 'Jackdaniel', '20'),
('E50', 'Whitepeare', '14')


select * from products_tbl
/*QUERY 3
Increase price of all drinks by 50%
*/
update products_tbl set productprice = productprice + (productprice * 50/100)
select * from products_tbl

/*Query 4
find the drink with the highest price
*/

select max(productprice) from products_tbl

create table branch_tbl
(
 [branchname] varchar(8),
 [branchid]char(4)
 )
 insert into branch_tbl(branchname,branchid)
 values
 ('Nairobi', 'N100'),
 ('Kisumu', 'K200'),
 ('Meru', 'R500'),
 ('Nakuru', 'U300'),
 ('mombasa', 'M500')

 select * from branch_tbl
  /*QUERY 5
   find the total number of branches
   */
   select count(distinct branchname) from branch_tbl
   /*QUERY6
   Find the branch name from remembering the branch id for example M500
   */
   select branchname from branch_tbl where branchid in ('U300');

 create table orders_table
 (
  [ordernumber] varchar(5),
  [orderdate] date,
  [customersnumber]tinyint 
  )
  insert into orders_table(ordernumber,orderdate,customersnumber)
  values
    ('0A1','october01,2020','1'),
    ('0A2','october02,2020','2'),
    ('0A3','october02,2020','3'),
	('0A4','october03,2020','4'),
	('0A5','october03,2020','5'),
	('0A6','october03,2020','6'),
	('0A7','october04,2020','7'),
	('0A8','october04,2020','8'),
	('0A9','october04,2020','9'),
	('0A10','october04,2020','10'),
	('0A11','october06,2020','11'),
	('0A12','october06,2020','12'),
	('0A13','october08,2020','13'),
	('0A14','october08,2020','14'),
	('0A15','october08,2020','15'),
	('0A16','october10,2020','16'),
	('0A17','october10,2020','17'),
	('0A18','october10,2020','18'),
	('0A19','october10,2020','19'),
	('0A20','october12,2020','20'),
	('0A21','october12,2020','21'),
	('0A22','october12,2020','22'),
	('0A23','october12,2020','23'),
	('0A24','october13,2020','24'),
	('0A25','october13,2020','25')

	select * from orders_table
	/* QUERY 7
	 find number of orders between two order dates e.g october 2 to 0ctober 4
	 */
	 select ordernumber from orders_table where orderdate between 'october02,2020' and 'october04,2020'
	 /* QUERY 8
	 find total number of customers for a specific date
	 */
	 select  count(customersnumber) from orders_table where orderdate in ('october04,2020')

	create table payment_tbl
	(
	  [ordernumber] varchar(5),
	  [payment]varchar(8)
	 )
	 insert into payment_tbl(ordernumber, payment)
	 values
	  ('0A1','paid'),
	  ('0A2','paid'),
	  ('0A3','paid'),
	  ('0A4','unpaid'),
	  ('0A5','unpaid'),
	  ('0A6','paid'),
	  ('0A7','paid'),
	  ('0A8','unpaid'),
	  ('0A9','paid'),
	  ('0A10','unpaid'),
	  ('0A11','unpaid'),
	  ('0A12','paid'),
	  ('0A13','paid'),
	  ('0A14','paid'),
	  ('0A15','paid'),
	  ('0A16','unpaid'),
	  ('0A17','paid'),
	  ('0A18','unpaid'),
	  ('0A19','paid'),
	  ('0A20','paid'),
	  ('0A21','unpaid'),
	  ('0A22','paid'),
	  ('0A23','unpaid'),
	  ('0A24','paid'),
	  ('0A25','paid')


	  select * from payment_tbl
	  /* QUERY 9
	   Find the total number of unpaid orders
	   */
	   select count(payment) from payment_tbl where payment in ('unpaid')

	    /* QUERY 10
		 find total number of payments unpaid or paid
		 */
		 select count(*) from payment_tbl;

