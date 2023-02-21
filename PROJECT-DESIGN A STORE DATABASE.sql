--CREATE TABLE Stores 
--(
--    OrderID INT,
--    Customer VARCHAR(100),
--    ProductPurchased VARCHAR(100),
--    ProductPrice INT,
--    Quantity INT
--);

----------------- INSERTING VALUE -------------------

--INSERT INTO Stores VALUES 
--(1,'JIM', 'PENCIL', 8, 2),
--(2,'IVAN', 'BALLPEN', 10, 5),
--(3,'JED', 'BOND PAPER', 2, 10),
--(4,'JES', 'BAG', 50, 1),
--(5,'CLAIRE', 'NOTEBOOK', 15, 3),
--(6,'JIM', 'BAG', 50, 1),
--(7,'JIM', 'BALLPEN', 10, 2),
--(8,'JOEY', 'PENCIL', 8, 5),
--(9,'DIETHER', 'COLORED PAPER', 3, 10),
--(10,'JOEY', 'BAG', 50, 1),
--(11,'IVAN', 'NOTEBOOK', 15, 5),
--(12,'IVAN', 'BAG', 50, 2),
--(13,'JED', 'CRAYONS', 25, 2),
--(14,'CLAIRE', 'STICKY NOTE', 10, 2),
--(15,'HANNAH', 'BOOK', 60, 1);

---------
SELECT * 
FROM Stores; 
--------- QUERY TO VIEW SALES PER PRODUCT ----------

SELECT ProductPurchased, (ProductPrice*Quantity) AS Sales_Per_Product
FROM Stores
ORDER BY ProductPrice;

------------- QUERY TO VIEW TOTAL SALES -------------

SELECT SUM(ProductPrice*Quantity) AS TOTAL_SALES
FROM Stores;

----------- QUERY TO VIEW THE COUNT OF THE PURCHASED PRODUCT  PER PRODUCT -------------

SELECT ProductPurchased, COUNT(ProductPurchased) AS CountOfProductPurchased
FROM Stores
GROUP BY ProductPurchased
ORDER BY CountOfProductPurchased DESC;

--QUERY TO VIEW WHO WAS THE CUSTOMER THAT CONSTANTLY PURCHASING--

SELECT Customer, COUNT(Customer) AS No_of_Purchased
FROM Stores
GROUP BY Customer
ORDER BY No_of_Purchased desc;

--QUERY TO VIEW WHO HAS SPEND MORE--

SELECT Customer, SUM(ProductPrice*Quantity) AS Spendetures
FROM Stores 
WHERE Customer ='IVAN'
GROUP BY Customer
UNION
SELECT Customer, SUM(ProductPrice*Quantity) AS Spendetures
FROM Stores 
WHERE Customer ='JIM'
GROUP BY Customer;