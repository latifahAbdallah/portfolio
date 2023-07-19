select *
from VidoeGameSales..vgsales

--games sold before 2000

select*
from VidoeGameSales..vgsales
where year <=1999
order by Year asc

--games sold between 2000 and 2010
select*
from VidoeGameSales..vgsales
where year between 2000 and 2010
order by Year asc

--games sold after 2010
select*
from VidoeGameSales..vgsales
where year >=2011
order by Year asc

--maximum global video game sales per year...

select Year, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
where year is not null
group by Year, Name, Genre, Publisher, Platform
order by MaxGlobalSales desc

--platform with the highest sales per global sales

select platform, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
--where year is not null
group by Platform 
order by MaxGlobalSales desc

--genre with the highest sales per global sales

select Genre, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
--where year is not null
group by Genre
order by MaxGlobalSales desc

--publisher with the highest sales per global sales

select Publisher, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
--where year is not null
group by Publisher
order by MaxGlobalSales desc

--create view for maximum global video game sales per year...

create view MaxSalesPerYear as
select Year, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
where year is not null
group by Year, Name, Genre, Publisher, Platform
--order by MaxGlobalSales desc

--crate view for platform with the highest sales per global sales

create view MaxPlatformSales as
select platform, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
--where year is not null
group by Platform 
--order by MaxGlobalSales desc

--create view for genre with the highest sales per global sales

create view MaxGenreSales as
select Genre, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
--where year is not null
group by Genre
--order by MaxGlobalSales desc

--create view for publisher with the highest sales per global sales

create view MaxPublisherSales as
select Publisher, MAX(global_sales) as MaxGlobalSales 
from VidoeGameSales..vgsales
--where year is not null
group by Publisher
--order by MaxGlobalSales desc

--Norh America sales vs global sales in percentage
  
select name, platform, year, genre, publisher,  