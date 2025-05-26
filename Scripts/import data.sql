BULK INSERT Products 
FROM "C:\Users\Devanshi Sharma\Desktop\Products.csv" 
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2
);

BULK INSERT Stores 
FROM "C:\Users\Devanshi Sharma\Desktop\Stores.csv"
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2
);

BULK INSERT Orders 
FROM "C:\Users\Devanshi Sharma\Desktop\Orders.csv"
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2
);

BULK INSERT OrderItems 
FROM "C:\Users\Devanshi Sharma\Desktop\Orderitems.csv"
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2
);

BULK INSERT Customers 
FROM "C:\Users\Devanshi Sharma\Desktop\Customers.csv"
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2
);


