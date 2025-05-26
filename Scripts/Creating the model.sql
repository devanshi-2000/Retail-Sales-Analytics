-- Create DimCustomers (Customer Dimension)
CREATE TABLE DimCustomers (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    JoinDate DATE
);

-- Create DimProducts (Product Dimension)
CREATE TABLE DimProducts (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Create DimStores (Store Dimension)
CREATE TABLE DimStores (
    StoreID INT PRIMARY KEY,
    StoreName NVARCHAR(100),
    Region NVARCHAR(50)
);

-- Create DimDates (Date Dimension)
CREATE TABLE DimDates (
    DateID INT PRIMARY KEY,
    FullDate DATE,
    Year INT,
    Month INT,
    MonthName NVARCHAR(20),
    Day INT
);

-- Create FactSales (Fact Table)
CREATE TABLE FactSales (
    SalesID INT IDENTITY(1,1) PRIMARY KEY,  -- SalesID as auto-increment
    OrderID INT,
    CustomerID INT,
    ProductID INT,
    StoreID INT,
    DateID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES DimCustomers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES DimProducts(ProductID),
    FOREIGN KEY (StoreID) REFERENCES DimStores(StoreID),
    FOREIGN KEY (DateID) REFERENCES DimDates(DateID)
);

ALTER TABLE FactSales
ADD CONSTRAINT FK_FactSales_Customers FOREIGN KEY (CustomerID) REFERENCES DimCustomers(CustomerID);

ALTER TABLE FactSales
ADD CONSTRAINT FK_FactSales_Products FOREIGN KEY (ProductID) REFERENCES DimProducts(ProductID);

ALTER TABLE FactSales
ADD CONSTRAINT FK_FactSales_Stores FOREIGN KEY (StoreID) REFERENCES DimStores(StoreID);

ALTER TABLE FactSales
ADD CONSTRAINT FK_FactSales_Dates FOREIGN KEY (DateID) REFERENCES DimDates(DateID);
