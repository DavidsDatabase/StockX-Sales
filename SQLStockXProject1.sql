Select *
from Stockx_Data

--which sneaker had the most buyers

select "Sneaker Name", COUNT("Sneaker Name") as SneakerCount
from Stockx_Data
GROUP BY "Sneaker Name"
ORDER BY 2 DESC

--showing each state's number of bought sneakers respectively

Select "Buyer Region", COUNT("Buyer Region") as "RegionalBuyer" 
from Stockx_Data
Group by "Buyer Region"
ORDER BY "RegionalBuyer" DESC

--grouping total sales per sneaker brand

SELECT "Brand", SUM("Sale Price") as "Total Sales"
from Stockx_data
group by "Brand"

--total sales per sneaker model

select "Sneaker Name", SUM("Sale Price") as TotalSalesPerSneaker
from Stockx_Data
group by "Sneaker Name"
order by 2 DESC

--average sales per sneaker model

select "Sneaker Name", AVG("Sale Price") as Avgprice
from Stockx_Data
group by "Sneaker Name"
having AVG("Sale Price") > 100
order by AVG("Sale Price") DESC

--which state had most sales

select "Buyer Region", SUM("Sale Price") as TotalSalesPerState
from Stockx_Data
group by "Buyer Region"
order by TotalSalesPerState desc

-- total profits per shoe

select "Sneaker Name", SUM("Sale Price")-SUM("Retail Price") as ProfitsPerSneakerModel
from Stockx_Data
group by "Sneaker Name"
order by ProfitsPerSneakerModel desc

--total profits per state

select "Buyer Region", SUM("Sale Price")-SUM("Retail Price") as ProfitsPerState
from Stockx_Data
group by "Buyer Region"
order by ProfitsPerState desc

--total profits per brand

select "Brand", SUM("Sale Price")-SUM("Retail Price") as ProfitsPerBrand
from Stockx_Data
group by "Brand"
order by ProfitsPerBrand desc

--displaying number of YEEZY(adidas) shoes being sold

Select "Sneaker Name", Count("Sneaker Name") as CountofSneaker
from Stockx_data
where "Sneaker Name" Like '%yeezy%' 
group by "Sneaker Name"
Order By Count("Sneaker Name") Desc

--displaying number of Off-White(Nike) shoes being sold

Select "Sneaker Name", Count("Sneaker Name") as CountofSneaker
from Stockx_data
where "Sneaker Name" Like '%nike%' 
group by "Sneaker Name"
Order By Count("Sneaker Name") Desc

--displaying number of Air-Jordans(Nike) shoes being sold

Select "Sneaker Name", Count("Sneaker Name") as CountofSneaker
from Stockx_data
where "Sneaker Name" Like '%air-jordan%' 
group by "Sneaker Name"
Order By Count("Sneaker Name") Desc

--showing total count of each shoe size

select "Shoe Size", COUNT("Shoe Size") as ShoeSize
from Stockx_data
group by "Shoe Size"
order by "Shoe Size" DESC


Select *
from Stockx_Data





