-- Populate DimCustomers from Customers table
INSERT INTO DimCustomers (CustomerID, Name, Email, JoinDate)
SELECT DISTINCT
    CustomerID,
    Name,
    Email,
    JoinDate
FROM Customers;

-- Populate DimProducts from Products table
INSERT INTO DimProducts (ProductID, ProductName, Category, Price)
SELECT DISTINCT
    ProductID,
    ProductName,
    Category,
    Price
FROM Products;

-- Populate DimStores from Stores table
INSERT INTO DimStores (StoreID, StoreName, Region)
SELECT DISTINCT
    StoreID,
    StoreName,
    Region
FROM Stores;

-- Populate DimDates from Orders table
INSERT INTO DimDates (DateID, FullDate, Year, Month, MonthName, Day)
SELECT DISTINCT
    CONVERT(INT, CONVERT(VARCHAR, YEAR(OrderDate)) + RIGHT('00' + CONVERT(VARCHAR, MONTH(OrderDate)), 2) + RIGHT('00' + CONVERT(VARCHAR, DAY(OrderDate)), 2)) AS DateID,
    OrderDate AS FullDate,
    YEAR(OrderDate) AS Year,
    MONTH(OrderDate) AS Month,
    DATENAME(MONTH, OrderDate) AS MonthName,
    DAY(OrderDate) AS Day
FROM Orders;

-- Populate FactSales table
INSERT INTO FactSales (OrderID, CustomerID, ProductID, StoreID, DateID, Quantity, UnitPrice, TotalAmount)
SELECT 
    O.OrderID,  
    O.CustomerID,
    OI.ProductID,
    O.StoreID,
    D.DateID,  -- Join with the DimDates table to get DateID
    OI.Quantity,
    OI.UnitPrice,
    OI.Quantity * OI.UnitPrice AS TotalAmount
FROM Orders O
JOIN OrderItems OI ON O.OrderID = OI.OrderID
JOIN DimDates D ON D.FullDate = O.OrderDate  -- Assuming OrderDate exists in Orders table
JOIN DimCustomers DC ON O.CustomerID = DC.CustomerID
JOIN DimStores DS ON O.StoreID = DS.StoreID;
