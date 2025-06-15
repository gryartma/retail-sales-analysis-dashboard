-- Menampilkan 10 data pertama
SELECT TOP 10 * FROM your_table_name;

-- Mengecek total data
SELECT COUNT(*) AS total_data FROM your_table_name;

-- Mengecek NULL pada kolom penting
SELECT 
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS null_customerid,
    SUM(CASE WHEN OrderDate IS NULL THEN 1 ELSE 0 END) AS null_orderdate,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales
FROM your_table_name;

-- Cek duplikat berdasarkan OrderID
SELECT OrderID, COUNT(*) AS jumlah
FROM your_table_name
GROUP BY OrderID
HAVING COUNT(*) > 1;

-- Cek jumlah data unik
SELECT 
    COUNT(DISTINCT CustomerID) AS unique_customers,
    COUNT(DISTINCT ProductID) AS unique_products,
    COUNT(DISTINCT OrderID) AS unique_orders
FROM your_table_name;

-- Deteksi data anomali negatif
SELECT * FROM your_table_name
WHERE Sales < 0 OR Profit < 0;

-- Nilai unik kolom kategorikal
SELECT DISTINCT Segment FROM your_table_name;
SELECT DISTINCT ShipMode FROM your_table_name;
SELECT DISTINCT Category FROM your_table_name;

-- Menambahkan nama bulan dan tahun dari OrderDate
SELECT 
    *,
    DATENAME(MONTH, OrderDate) AS nama_bulan,
    YEAR(OrderDate) AS tahun
FROM your_table_name;

Menambahkan query eksplorasi awal SQL

