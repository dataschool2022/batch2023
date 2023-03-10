
use supermart

		select * from transactions

--- Images 
--- Lines 
--- Row Groups  Calculating Sub Totals , 

--- Basic Formatting  Font / Backgroud Color / Fill Color 

--- Document Mapping  

--- Page Breaks 

Select Region,Category,Year(order_date) as Year,Sum(sales) Total_Sales from transactions
				Group by Region,Category,Year(Order_date)
					order by region


		select @@servername







