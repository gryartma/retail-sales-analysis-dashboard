SELECT TOP 10 *
FROM Superstore;

SELECT COUNT(*) AS total_data FROM Superstore;

SELECT 
    SUM(CASE WHEN Customer_Name IS NULL THEN 1 ELSE 0 END) AS null_customerid,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS null_orderdate,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales , 
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS null_Profit , 
    SUM(CASE WHEN Region IS NULL THEN 1 ELSE 0 END) AS null_Region , 
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS null_Quantity
FROM Superstore;

SELECT Order_ID, COUNT(*) AS jumlah
FROM Superstore
GROUP BY Order_ID
HAVING COUNT(*) > 1;

SELECT 
    COUNT(DISTINCT Customer_Name) AS unique_customers,
    COUNT(DISTINCT Product_ID) AS unique_products,
    COUNT(DISTINCT Order_ID) AS unique_orders
FROM Superstore;

SELECT * 
FROM Superstore
WHERE Sales < 0 OR Profit < 0;

SELECT DISTINCT Segment FROM Superstore;
SELECT DISTINCT Ship_Mode FROM Superstore;
SELECT DISTINCT Category FROM Superstore;

SELECT 
    *,
    DATENAME(MONTH, Order_Date) AS nama_bulan,
    YEAR(Order_Date) AS tahun
FROM Superstore;

