-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName
FROM Products AS P
    JOIN Categories as C ON P.CategoryID = C.CategoryID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT OrderID, ShipperName
FROM Orders AS O
    JOIN Shippers as S ON O.ShipperID = S.ShipperID
where (O.OrderDate < '2012-09-08')

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, Quantity
FROM OrderDetails AS O
    JOIN Products as P ON O.ProductID = P.ProductID
where (O.OrderID = '10251')
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.


SELECT OrderID, CustomerName, LastName
FROM Orders AS O
    JOIN Customers as C ON O.CustomerID = C.CustomerID
    JOIN Employees as E ON O.EmployeeID = E.EmployeeID;

