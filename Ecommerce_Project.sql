-- ==========================================
-- E-COMMERCE SALES ANALYSIS PROJECT
-- ==========================================

USE ecommerce_project;

-- ==========================================
--  KPI ANALYSIS
-- ==========================================

-- KPI 1 : Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- KPI 2 : Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- KPI 3 : Total Orders
SELECT COUNT(*) AS Total_Orders
FROM superstore;

-- KPI 4 : Total Customers
SELECT COUNT(DISTINCT `Customer Name`) AS Total_Customers
FROM superstore;

-- KPI 5 : Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM superstore;

-- KPI 6 : Average Profit
SELECT AVG(Profit) AS Average_Profit
FROM superstore;

-- ==========================================
-- CATEGORY ANALYSIS
-- ==========================================

-- Category 1 : Sales by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

-- Category 2 : Profit by Category
SELECT
    Category,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category;

-- Category 3 : Orders by Category
SELECT
    Category,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY Category;

-- Category 4 : Average Discount by Category
SELECT
    Category,
    AVG(Discount) AS Average_Discount
FROM superstore
GROUP BY Category;

-- ==========================================
-- REGION ANALYSIS
-- ==========================================

-- Region 1 : Sales by Region
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region;

-- Region 2 : Profit by Region
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region;

-- Region 3 : Orders by Region
SELECT
    Region,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY Region;

-- Region 4 : Average Sales by Region
SELECT
    Region,
    AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY Region;

-- ==========================================
-- CUSTOMER ANALYSIS
-- ==========================================

-- Customer 1 : Sales by Customer
SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`;

-- Customer 2 : Profit by Customer

SELECT
    `Customer Name`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Customer Name`;

-- Customer 3 : Top 10 Customers

SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Customer 4 : Top 10 Customers by Profit

SELECT
    `Customer Name`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Customer 5 : Orders by Customer

SELECT
    `Customer Name`,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Orders DESC;

-- ==========================================
-- PRODUCT ANALYSIS
-- ==========================================

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`;

SELECT
    `Product Name`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`;

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    `Product Name`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT
    `Product Name`,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Orders DESC;

-- ==========================================
-- SEGMENT ANALYSIS
-- ==========================================

SELECT
    Segment,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment;

SELECT
    Segment,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Segment;

SELECT
    Segment,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY Segment;

SELECT
    Segment,
    AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY Segment;

SELECT
    Segment,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- ==========================================
-- SHIP MODE ANALYSIS
-- ==========================================

SELECT
    `Ship Mode`,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY `Ship Mode`;

SELECT
    `Ship Mode`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Ship Mode`; 

SELECT
    `Ship Mode`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Ship Mode`;

SELECT
    `Ship Mode`,
    AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY `Ship Mode`;

SELECT
    `Ship Mode`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;

-- ==========================================
-- STATE ANALYSIS
-- ==========================================

-- Query 1 : Sales by State
SELECT
    State,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State;

-- Query 2 : Profit by State
SELECT
    State,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY State;

-- Query 3 : Orders by State
SELECT
    State,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY State;

-- Query 4 : Average Sales by State
SELECT
    State,
    AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY State;

-- Query 5 : Top 10 States by Sales
SELECT
    State,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 6 : Top 10 States by Profit
SELECT
    State,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;

-- Query 7 : Bottom 10 States by Profit
SELECT
    State,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY State
ORDER BY Total_Profit ASC
LIMIT 10;

-- ==========================================
-- CITY ANALYSIS
-- ==========================================

-- Query 1 : Sales by City
SELECT
    City,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY City;

-- Query 2 : Profit by City
SELECT
    City,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY City;

-- Query 3 : Orders by City
SELECT
    City,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY City;

-- Query 4 : Average Sales by City
SELECT
    City,
    AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY City;

-- Query 5 : Top 10 Cities by Sales
SELECT
    City,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 6 : Top 10 Cities by Profit
SELECT
    City,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY City
ORDER BY Total_Profit DESC
LIMIT 10;

-- Query 7 : Bottom 10 Cities by Profit
SELECT
    City,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY City
ORDER BY Total_Profit ASC
LIMIT 10;

-- ==========================================
-- TIME ANALYSIS
-- ==========================================

-- Query 1 : Sales by Year
SELECT
    YEAR(`Order Date`) AS Order_Year,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY YEAR(`Order Date`)
ORDER BY Order_Year;

-- Query 2 : Profit by Year
SELECT
    YEAR(`Order Date`) AS Order_Year,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY YEAR(`Order Date`)
ORDER BY Order_Year;

-- Query 3 : Sales by Month
SELECT
    MONTH(`Order Date`) AS Order_Month,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY MONTH(`Order Date`)
ORDER BY Order_Month;

-- Query 4 : Profit by Month
SELECT
    MONTH(`Order Date`) AS Order_Month,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY MONTH(`Order Date`)
ORDER BY Order_Month;

-- Query 5 : Orders by Month
SELECT
    MONTH(`Order Date`) AS Order_Month,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY MONTH(`Order Date`)
ORDER BY Order_Month;

-- ==========================================
-- DISCOUNT ANALYSIS
-- ==========================================

-- Query 1 : Average Discount by Category
SELECT
    Category,
    AVG(Discount) AS Average_Discount
FROM superstore
GROUP BY Category;

-- Query 2 : Average Discount by Region
SELECT
    Region,
    AVG(Discount) AS Average_Discount
FROM superstore
GROUP BY Region;

-- Query 3 : Average Discount by Segment
SELECT
    Segment,
    AVG(Discount) AS Average_Discount
FROM superstore
GROUP BY Segment;

-- Query 4 : Top 10 Highest Discount Orders
SELECT
    `Order ID`,
    `Customer Name`,
    `Product Name`,
    Discount
FROM superstore
ORDER BY Discount DESC
LIMIT 10;

-- Query 5 : Discount vs Profit
SELECT
    Discount,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- ==========================================
-- BUSINESS INSIGHTS
-- ==========================================

-- Query 1 : Top 10 Most Profitable Products
SELECT
    `Product Name`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Query 2 : Bottom 10 Loss Making Products
SELECT
    `Product Name`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;

-- Query 3 : Top 10 Customers by Orders
SELECT
    `Customer Name`,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Orders DESC
LIMIT 10;

-- Query 4 : Top Selling Sub-Category
SELECT
    `Sub-Category`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- Query 5 : Most Profitable Sub-Category
SELECT
    `Sub-Category`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;

-- ==========================================
-- ADVANCED BUSINESS ANALYSIS
-- ==========================================

-- Query 1 : Average Profit by Category
SELECT
    Category,
    AVG(Profit) AS Average_Profit
FROM superstore
GROUP BY Category;

-- Query 2 : Average Profit by Region
SELECT
    Region,
    AVG(Profit) AS Average_Profit
FROM superstore
GROUP BY Region;

-- Query 3 : Average Profit by Ship Mode
SELECT
    `Ship Mode`,
    AVG(Profit) AS Average_Profit
FROM superstore
GROUP BY `Ship Mode`;

-- Query 4 : Category Wise Sales Percentage
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 5 : Region Wise Sales Percentage
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- =======================================
-- CASE WHEN
-- =======================================

SELECT
    `Order ID`,
    `Customer Name`,
    Sales,
    Profit,

    CASE
        WHEN Profit > 1000 THEN 'High Profit'
        WHEN Profit >= 0 THEN 'Medium Profit'
        ELSE 'Loss'
    END AS Profit_Status

FROM superstore;