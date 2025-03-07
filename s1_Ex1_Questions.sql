
-- Exercise 1

-- Q1) Create a database exercise
create  database Excersize1;
use Excersize1;
-- Q2) Create a table manufacturers as per the schema depicted
CREATE TABLE Manufacturers (
    Code INT PRIMARY KEY,
    Name VARCHAR(30) NOT NULL
);
select * from	Manufacturers;

-- Q3) Create a table products as per the schema depicted
CREATE TABLE Products (
    Code INT PRIMARY KEY,
    Name VARCHAR(30) NOT NULL,
    Price INT NOT NULL,
    Mfg INT,
    FOREIGN KEY (Mfg) REFERENCES Manufacturers(Code)
);

-- Q4) Add records to the table manufacturers

INSERT INTO Manufacturers (Code, Name) VALUES
(1, 'Sony'),
(2, 'Creative Labs'),
(3, 'Hewlett-Packard'),
(4, 'Iomega'),
(5, 'Fujitsu'),
(6, 'Winchester');


-- Q5) Add records to the table products

INSERT INTO Products (Code, Name, Price, Mfg) VALUES
(1, 'Hard drive', 240, 5),
(2, 'Memory', 120, 6),
(3, 'ZIP drive', 150, 4),
(4, 'Floppy disk', 5, 6),
(5, 'Monitor', 240, 1),
(6, 'DVD drive', 180, 2),
(7, 'CD drive', 90, 2),
(8, 'Printer', 270, 3),
(9, 'Toner cartridge', 66, 3),
(10, 'DVD burner', 180, 2);

Select * From Products;

-- Q6) Display the names of all the products in the store.

Select  Name from Products;
select distinct(name) from products;

-- Q7) Display the names and the prices of all the products in the store.
Select Name, Price from Products;

-- Q8) Display the name of the products with a price less than or equal to $200.

Select Name, Price <=200 from Products;

Select Name  from Products where Price <=200;

Select * From Products;
-- Q9) Dsiplay all the products with a price between $60 and $120.

Select Name from Products 
where Price 
 between 60 and 120;

-- Q10) Display avg price of all the products
Select avg(Price) from Products;


-- Q11) Compute the average price of all products with manufacturer code equal to 2.
 
 select * From Products;
 
 Select avg(Price) from Products where mfg =2;


-- Q12) Compute the number of products with a price larger than or equal to $180 and set the column name as Prod_Count

Select count(Name) as Prod_Count from Products where price >=180;

-- Q13) Select the name and price of all products with a price larger than or equal to $180, 
--      and sort by price (in descending order)
Select Name, Price from Products where price >=180 order by Price desc;

-- Q14) Display the average price of each manufacturer's products, showing only the manufacturer's code.

Select Mfg as Mfg, Avg(Price) as AvgPrice from Products 
group by Mfg;


-- Q15) Add a new product: Loudspeakers, $70, manufacturer 2.

INSERT INTO Products (Code, Name, Price, Mfg) VALUES
(11, 'Loudspeakers', 70, 2);

Select * From Products;

-- Q16) Update the name of product 8 to "Laser Printer".

Update Products set Name = "Laser Printer" where code =8;

-- Q17) Update the products table and set discount to 10% on all products

Update Products set Price = price*0.9;

-- Q18) Delete the record where Product code is 11

Delete from Products where Code=11;


