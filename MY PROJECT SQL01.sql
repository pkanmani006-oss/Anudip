
CREATE DATABASE  SalesForecastDB;
USE SalesForecastDB;


CREATE TABLE IF NOT EXISTS `demand_forecasting_data` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Product_ID VARCHAR(50),
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Demand INT,
    Price DECIMAL(10,2),
    Revenue DECIMAL(12,2),
    Stock_Level INT,
    Promotion VARCHAR(20)
);

USE SalesForecastDB;


TRUNCATE TABLE `demand_forecasting_data`;

INSERT INTO `demand_forecasting_data` (Date, Product_ID, Product_Name, Category, Demand, Price, Revenue, Stock_Level, Promotion) VALUES
('2024-01-01', 'P001', 'Milk', 'Dairy', 150, 45.00, 6750.00, 200, 'No'),
('2024-01-02', 'P001', 'Milk', 'Dairy', 180, 45.00, 8100.00, 180, 'Yes'),
('2024-01-01', 'P002', 'Bread', 'Bakery', 120, 30.00, 3600.00, 150, 'No'),
('2024-01-02', 'P002', 'Bread', 'Bakery', 140, 30.00, 4200.00, 130, 'No'),
('2024-01-01', 'P003', 'Eggs', 'Dairy', 200, 8.00, 1600.00, 300, 'Yes');

SELECT * FROM `demand_forecasting_data`;
SELECT 
  Product_Name,
  SUM(Demand) AS Total_Demand,
  AVG(Demand) AS Next_Month_Forecast
FROM demand_forecasting_data
GROUP BY Product_Name;