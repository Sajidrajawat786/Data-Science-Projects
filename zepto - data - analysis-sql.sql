select * from zepto limit 10;
select COUNT(*) FROM zepto;
SELECT * FROM zepto 
WHERE name is NULL 
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS null
OR
quantity IS NULL;

--diffrent product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;
--PRODUCTS in stock vs out of stock
SELECT outOfstock,count(sku_id)
FROM zepto
GROUP BY outOfstock;

--products name present multiple times
SELECT name, COUNT(sku_id) as "Number of SKUs"
FROM zepto
GROUP BY NAME
HAVING  count(sku_id) >1
ORDER BY count(sku_id) DESC;
--products with price = 0
SELECT * FROM zepto
WHERE mrp = 0 OR discountedsellinprice = 0;

DELETE FROM zepto
WHERE mrp = 0;

--convert paisa to rupees
UPDATE zepto
SET mrp = mrp/100.0,
discountedsellinprice = discountedsellinprice/100.0;

SELECT mrp, discountedsellinprice from zepto;

--Q1. Find the top 10 best - value products bassed on the discount percentage.
SELECT DISTINCT name,mrp,discountpercent
FROM zepto
ORDER BY discountpercent DESC
limit 10;

--Q2. What are the products high mrp but out of stock

SELECT DISTINCT name,mrp
FROM zepto
WHERE outOfStock = TRUE and mrp > 300
order BY mrp DESC;

--Q3. Clculate estimated revenue for each category
SELECT category,
SUM(discountedsellinprice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY CATEGORY
ORDER BY total_revenue;

--Q4. find all product where mrp is greter then 500 and discount is less than 10%.
SELECT DISTINCT name ,mrp,discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent <10
ORDER BY mrp DESC , discountPercent DESC;

--Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

--Q6. Find price per gram for products above 100g and sort by best value.
SELECT DISTINCT name ,weightInGms,discountedsellinprice,
ROUND(discountedsellinprice/weightInGms,2) AS price_per_gram
FROM zepto
WHERE weightInGms >=100
ORDER BY price_per_gram;
--Q7.Group the products into categories like low ,Medium,Bulk,
SELECT DISTINCT name,weightInGms,
CASE when weightInGms < 1000 THEN 'Low'
     when weightInGms < 5000 then'Medium'
	 ELSE 'Bulk'
	 END AS weight_category
FROM zepto;

--Q8.What is the total Inventory Weight per category
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;