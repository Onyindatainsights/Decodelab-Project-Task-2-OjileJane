select * from dataset_for_data_analytics_project;

ALTER TABLE dataset_for_data_analytics_project
RENAME COLUMN `ï»¿OrderID` TO OrderID;

SELECT OrderID, CustomerID, Product, Quantity
FROM dataset_for_data_analytics_project
WHERE Quantity > 3;

SELECT *
FROM dataset_for_data_analytics_project
WHERE PaymentMethod = 'Online';

SELECT Product, Quantity
FROM dataset_for_data_analytics_project
ORDER BY Quantity ASC;

SELECT OrderID, Product, TotalPrice
FROM dataset_for_data_analytics_project
ORDER BY TotalPrice DESC;

SELECT Product,
       SUM(TotalPrice) AS TotalSales
FROM dataset_for_data_analytics_project
GROUP BY Product;

SELECT PaymentMethod,
       COUNT(*) AS TotalOrders
FROM dataset_for_data_analytics_project
GROUP BY PaymentMethod;

SELECT COUNT(*) AS TotalOrders
FROM dataset_for_data_analytics_project;

SELECT COUNT(*) AS DeliveredOrders
FROM dataset_for_data_analytics_project
WHERE OrderStatus = 'Delivered';

SELECT SUM(TotalPrice) AS TotalRevenue
FROM dataset_for_data_analytics_project;

SELECT SUM(Quantity) AS TotalQuantitySold
FROM dataset_for_data_analytics_project;

SELECT AVG(TotalPrice) AS AverageOrderValue
FROM dataset_for_data_analytics_project;

SELECT AVG(Quantity) AS AverageQuantity
FROM dataset_for_data_analytics_project;

SELECT Product,
       AVG(TotalPrice) AS AvgSales
FROM dataset_for_data_analytics_project
GROUP BY Product
ORDER BY AvgSales DESC;

SELECT PaymentMethod,
       SUM(TotalPrice) AS Revenue
FROM dataset_for_data_analytics_project
GROUP BY PaymentMethod
ORDER BY Revenue DESC;