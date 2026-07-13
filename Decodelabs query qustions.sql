-- Display all records
select* 
from sales_data

-- Delivered Orders only
 select *
 from sales_data
 where Order_status = 'delivered'

 -- Order made Using Credit Card
 Select 
 product,
 payment_method
 from sales_data
 where Payment_method = 'Credit card'

 -- laptop orders only
 select 
 orderid,
 product,
 order_status,
 Payment_method,
 quantity,
 Unit_price,
 Total_price
 from sales_data
 where product = 'laptop'

 -- order with total price Greater tyhan 3000
 select
 Orderid,
 product,
 total_price
 from sales_data
 where total_price > 3000

 -- highest total Price
 select
 orderid,
 product,
 Total_price
 from sales_data
 order by Total_price desc

 -- lowst unit price
 select
 orderid,
 product,
 Unit_price
 from sales_data
 order by unit_price asc

 -- sorting by date
 select*
 from sales_data
 order by date

 -- Total revenue by Product
 select
	 Product,
	sum(total_price) total_revenue
from sales_data
group by product

-- number of orders by payment type
select
	payment_method,
	count(orderId) Total_orders
from Sales_data
group by payment_method

-- Average price of each product
select
product,
avg(unit_price) Average_price
from Sales_data
group by Product

-- Total number of Orders
select
Count(*) Total_Orders
from Sales_data

-- Number of customers
select 
count(distinct CustomerID) Total_customer
from Sales_data
CustomerID

-- Total Revenue
select 
Sum(Total_price) Total_Revenue
From Sales_data

-- Total Quantuty sold
select 
sum(quantity) Total_Quantity
from Sales_data

-- Average order value
select
avg(total_price) Avg_Order_value
from Sales_data

-- Average Quantity Purchased 
select
avg(quantity) Avg_quantity
from sales_data

-- Revenue by Product for delivered order
select
product,
Sum(Total_Price) Revenue
from Sales_data
where order_status = 'delivered'
group by product
order by revenue desc

-- average total price by payment method
select
payment_method,
avg(total_price) Average_sales
from Sales_data
group by payment_method
order by Average_sales Desc

-- Order by Referral Source
select
Referral_source,
Count(Referral_source) Total_orders
From Sales_data
Group by referral_source
order by Total_orders desc

-- Quantity Sold by Product
Select
product,
Sum(quantity) quantity_Sold
from sales_data
group by product
order by Quantity_sold Desc
