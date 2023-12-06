USE northwind;

-- 1. List the product id, product name, unit price and category name of all products.
-- Order by category name and within that, by product name.
SELECT ProductID, CategoryName, ProductName, UnitPrice
FROM Products
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
ORDER BY CategoryName, ProductName;

-- 2. List the product id, product name, unit price, and supplier name of all products that cost more than $75.
-- Order by product name.
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE 75 > 0
ORDER BY ProductName;

-- 3. List the product id, product name, unit price, category name and supplier name of every product.
-- Order by product name.
SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName
From Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
ORDER BY ProductName;

-- 4. What is the product name(s) and categories of the most expensive products?
-- Find the max price in subquery and then use that in your more complex query that joins products with categories
SELECT ProductName, CategoryName
FROM products
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- 5. List the order id, ship name, ship address and shipping company name of every order that shipped to Germany.
SELECT OrderID, ShipVia, ShipAddress, ShipName
FROM Orders
WHERE ShipCountry LIKE "Germany";

-- 6. List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch ALE"?
SELECT OrderID, OrderDate, ShipName, ShipAddress
FROM Orders
JOIN OrderDetails
ON OrderDetails.ProductID = Products.ProductID
WHERE ProductID LIKE "%Sasquatch Ale%"
ORDER BY ProductName;



