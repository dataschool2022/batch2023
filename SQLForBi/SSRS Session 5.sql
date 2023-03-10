select * from Transactions


Select customer_id,
	   Customer_Name,
	   Sum(sales) as Total_sales,
	   sum(profit) as Total_profit,
	   sum(Quantity) as Total_Quantity,
	   sum(Discount) as Total_Discount,
	   count(*) as Total_orders
	
						from transactions	
						Where state = @state
						Group by 
									Customer_id,Customer_Name


select @@servername

select distinct state from transactions

use supermart

Select customer_id,
	   Customer_Name,
	   year(order_date) as year,
	   Sum(sales) as Total_sales,
	   sum(profit) as Total_profit,
	   sum(Quantity) as Total_Quantity,
	   sum(Discount) as Total_Discount,
	   count(*) as Total_orders
		
						from transactions	
						Where year(order_date) = 2014
						Group by 
									Customer_id,Customer_Name,year(order_date)

select distinct year(order_date) as Year  from Transactions

---- Using Date Parameter In SSRS 


declare @orderdate  date
set  @orderdate = '2014-11-12'


select order_date,state,city,sum(sales) as Total_sales, Sum(profit) as Total_profit, sum(quantity) as total_quantity  from Transactions
					where order_date = @orderdate
					Group by order_date,state,city
						 order by city asc 

select @@servername

-------------------------- Drill Down Report In SSRS -------------------------
select * from transactions 

---> year , Quarter,Month

---> Country->State->City->Pincode

---> Category->Subcategory->Product Name / ProductName

Select COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Transactions'

select Category,
		Sub_Category,
		Product_Name,
		Year(Order_date) as Year,
		Month(Order_date) as Month,
		CONCAT('Qtr ',Datename(qq,Order_date)) as Qtr,
		DATENAME(mm,Order_date)  as Month_Name,
		SUM(sales) as Sales

							from Transactions
										Group By
												Category,Sub_Category,Product_Name,Order_Date
										Order By Year(order_date),Month(Order_date) ASC











