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


Select customer_id,
	   Customer_Name,
	   year(order_date) as year,
	   Sum(sales) as Total_sales,
	   sum(profit) as Total_profit,
	   sum(Quantity) as Total_Quantity,
	   sum(Discount) as Total_Discount,
	   count(*) as Total_orders
		
						from transactions	
						Where year(order_date) = @year
						Group by 
									Customer_id,Customer_Name,year(order_date)

select distinct year(order_date) as Year  from Transactions




