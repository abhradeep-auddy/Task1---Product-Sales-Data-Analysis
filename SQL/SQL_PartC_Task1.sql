Drop table PartC_Task1;
create table PartC_Task1 (
Date Date,
Region varchar(20),
Product	Varchar(20),
Quantity Int,
UnitPrice numeric(10,2),
StoreLocation varchar(20),
CustomerType varchar(20),
Discount numeric (10,2),
Salesperson varchar(20),
TotalPrice numeric(10,2),
PaymentMethod varchar(20),
Promotion varchar(20),
Returned varchar(20),
OrderID varchar(20),
CustomerName varchar(20),
ShippingCost numeric(10,2),
OrderDate date,
DeliveryDate date,
RegionManager varchar(20),
Profit numeric(10,2)
);

Select * From PartC_Task1;

Select region, sum(totalprice) as total_sales
from PartC_Task1
group by region;

Select product, sum(profit) as total_profit
from PartC_Task1
group by product
order by total_profit desc
limit 5;

SELECT 
    EXTRACT(MONTH FROM DATE) AS MONTH_ADDED,
    SUM(totalprice) AS TOTAL_SALES
FROM PARTC_Task1
GROUP BY EXTRACT(MONTH FROM DATE)
ORDER BY MONTH_ADDED;

Select discount
from PartC_Task1
order by discount desc limit 1;