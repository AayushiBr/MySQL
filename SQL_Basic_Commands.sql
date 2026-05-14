CREATE TABLE Customer(
	CustomerID INT Primary Key,
	CustomerName VARCHAR(50),
	LastName VARCHAR(50),
	Country VARCHAR(50),
	Age int(2),
	Phone int(10)
);

INSERT INTO Customer(CustomerID, CustomerName, LastName, Country, Age, Phone)
	VALUES(1, 'Aayushi','Ramdham','India','29','xxxxxxxxx'),
			(2, 'Aayushi','Ramdham','US','29','xxxxxxxxx'),
			(3, 'Aayushi','Ramdham','Germany','29','xxxxxxxxx'),
			(4, 'Nikhita','Ramdham','India','27','xxxxxxxxx'),
			(5, 'Vipul','Ramdham','India','31','xxxxxxxxx'),
			(6, 'Shreeya','Ramdham','India','13','xxxxxxxxx'),
			(7, 'Nikhita','Ramdham','Singapore','27','xxxxxxxxx'),
			(8, 'Aayushi','Ramdham','Canada','29','xxxxxxxxx'),
			(9, 'Aayushi','Ramdham','UK','29','xxxxxxxxx'),
			(10, 'Aayushi','Ramdham','Spain','29','xxxxxxxxx'),
			(11, 'Vipul','Ramdham','Australia','31','xxxxxxxxx'),
			(12, 'Aayushi','Ramdham','Australia','29','xxxxxxxxx'),
			(13, 'Shreeya','Ramdham','Australia','2','xxxxxxxxx'),
			(14, 'Bhavik','Ramdham','India','7','xxxxxxxxx'),
			(15, 'Aisha','Ramdham','India','29','xxxxxxxxx'),
			(16, 'Vishal','Ramdham','India','29','xxxxxxxxx'),
			(17, 'Vishal','Ramdham','France','29','xxxxxxxxx'),
            (18, 'Aisha','Ramdham','US','29','xxxxxxxxx'),
			(19, 'Vishal','Ramdham','US','29','xxxxxxxxx'),
			(20, 'Vishal','Ramdham','Germany','29','xxxxxxxxx');

--to select all data
select * from Customer;

--to print CustomerName and LastName of Customers
select CustomerName, LastName from Customer;

--to Print CustomerName and LastName of Customers with age 29
select CustomerName, LastName from Customer where Age='29';

--to Print distinct CustomerName
select Distinct CustomerName from Customer;
--to Print distinct Age
select Distinct Age from Customer;
--to Print distinct Country
select Distinct Country from Customer;
--to Print distinct Country and Age
select Distinct Age,Country from Customer;

--to Print total number ofdistinct Country
select Count(Distinct Country) from Customer;

--to print customer from Germany (using where clause)
select * from Customer where Country='Germany';

--to print customer list based on age in ascending order
Select * from Customer order by Age Asc;

--Select all US customers that starts with either "A"'
select * from Customer where country='US' and CustomerName like 'A%';
select * from Customer where CustomerName like 'A%';

--Select all US customers that starts with either "A" or "N"
select * from Customer where country='India' and (CustomerName like 'A%' or CustomerName like 'N%');

--Select only the customers that are not from India
select * from Customer where not country='India';

--select customers that does not start with the letter "A" 
select * from Customer where CustomerName not like 'A%';

--select customers wih a customer ID between 8 to 15 
select * from Customer where CustomerID between 8 and 15;
--select customers wih a customer ID not between 8 to 15 
select * from Customer where CustomerID not between 8 and 15;

--select customers that are not from US or Germany
select * from Customer where country not in ('Germany','US');

--select customers with a customerid not greater than 15
select * from customer where not customerid > 15;

--select customers with a customerid not less than 15
select * from customer where not customerid < 5;

--select only the first 3 records of the customers table
select * from Customer limit 3;

--select the youngest age of customer
select Min(Age) from Customer;

--select the eldest age of customer
select Max(Age) from Customer;

--select the average age of customer
select avg(Age) from Customer;

--select the youngest age of customer
select Min(Age) as YoungestAge from Customer;

select Min(Age) as YoungestAge from Customer group by country;

--select the total number of rows in the Customer
select count(*) from Customer;

select count(Country) from Customer;

--select names of Country of the Customer
select distinct(Country) from Customer;

--find the total number of Countries of the customer
select count(distinct(Country)) from Customer;

--find the number of customers from India
select count(CustomerID) from customer where country='India';

--return all customer from a country that starts with "I" followed by one wildcard character,then 'nd' and then two wildcard character
select * from customer where country like 'I_di_';

--return all customer that have "n" in the second position
select * from customer where country like '_n%';

--return all customer from "Germany","US"
select * from customer where country in('Germany','US');

--return all customer that are not from "Germany","US"
select * from customer where country not in('Germany','US');

--select all customers with age between 10 and 30
select * from Customer where age between 10 and 30;
















