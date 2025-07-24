SELECT ProductName, UnitPrice ,UnitsInStock, UnitPrice * UnitsInStock AS StockValue
FROM Products

SELECT * FROM Products

SELECT ProductID as รหัส, ProductName as สินค้า,UnitsInStock + UnitsOnOrder as จํานวนคงเหลือทั้งหมด,ReorderLevel as จุดสั่งชื้อ FROM Products
WHERE (UnitsInStock + UnitsOnOrder) < ReorderLevel

SELECT PRODUCTID ,ProductName,UnitPrice,ROUND(UnitPrice*0.07,2)AS Vat7
FROM Products

SELECT EmployeeID,TitleOfCourtesy+FirstName+space(1)+LastName AS [Employees Name] 
From Employees

SELECT *
FROM [Order Details]
WHERE OrderID = 10250

SELECT orderID ,ProductID , UnitPrice,Quantity,Discount,
        UnitPrice*Quantity*(1-Discount) AS NetPrice
FROM [Order Details]
where OrderID = 10250

SELECT orderID ,ProductID , UnitPrice,Quantity,Discount,
        ROUND(UnitPrice*Quantity*(1-Discount),2) AS NetPrice
FROM [Order Details]
where OrderID = 10250

Select COUNT(*)  จำนวนสินค้า
From Products 
where UnitsInStock < 15

SELECT count(*) จำนวนพนักงาน
from Employees

SELECT COUNT(*) จำนวนลูกค้าจากบราซิล
from Customers
where Country = 'brazil'

SELECT COUNT(*) 
from [Order Details]
where OrderID = 10250

SELECT COUNT(*)
FROM Orders
WHERE ShipCountry = 'usa'

SELECT min(UnitPrice) ราคาต่ำสุด,max(UnitPrice) ราคาสูงสุด,
        avg(UnitPrice) ราคาเฉลี่ย
FROM Products

select avg(UnitPrice) ราคาเฉลี่ย,max(UnitPrice) ราคาสูงสุด,min(UnitPrice) ราคาต่ำสุด
from [Order Details]
where ProductID = 5

SELECT Country,COUNT(*)as [Num of Country]
from Customers
GROUP BY Country

SELECT Country,COUNT(*)as จำนวนลูกค้า
from Customers
GROUP BY Country
ORDER BY [จำนวนลูกค้า] DESC

SELECT Country,City,COUNT(*)as จำนวนลูกค้า
from Customers
GROUP BY Country,City

SELECT ShipCountry,COUNT(*) จำนวน
from Orders
GROUP BY ShipCountry

SELECT Country,City,COUNT(*)as จำนวนลูกค้า
from Customers
GROUP BY Country,City
HAVING COUNT(*) > 1

SELECT ShipCountry,COUNT(*) จำนวน
from Orders
GROUP BY ShipCountry
HAVING COUNT(*) > 100


SELECT ShipCountry,COUNT(*) จำนวน
from Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY ShipCountry
HAVING COUNT(*)<5


SELECT ProductID,sum(Quantity) จำนวนที่ขายได้,
        max(UnitPrice) ราคาสูงสุด,min(UnitPrice) ราคาต่ำสุด,
        AVG(UnitPrice) ราคาเฉลี่ย
from [Order Details]
GROUP BY ProductID
having sum(Quantity) > 1000
ORDER BY ProductID ASC

SELECT OrderID,sum(UnitPrice*Quantity*(1-Discount)) ราคารวม
from [Order Details]
GROUP BY OrderID

