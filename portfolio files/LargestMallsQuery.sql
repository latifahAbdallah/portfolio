select * 
from [largest malls]..malls

--malls opened before 2000

select * 
from [largest malls]..malls
where [Year opened] <=2000
order by [Year opened] desc


--malls opened between 2000 and 2010

select * 
from [largest malls]..malls
where [Year opened] between 2000 and 2010
order by [Year opened] desc

--malls opened after 2010

select * 
from [largest malls]..malls
where [Year opened] >2010
order by [Year opened] desc
 
--year with the maximum gross leasable area
select [Year opened], MAX([Gross leasable area (Gla)]) as MaxLeasableArea
from [largest malls].dbo.malls
group by [Year opened]
order by MaxLeasableArea desc

--country with the maximum gross leasable area

select country, MAX([Gross leasable area (Gla)]) as MaxLeasableArea
from [largest malls].dbo.malls
group by Country
order by MaxLeasableArea desc

--year with the manimum gross leasable area
select [Year opened], Min([Gross leasable area (Gla)]) as MinLeasableArea
from [largest malls].dbo.malls
group by [Year opened]
order by MinLeasableArea desc

--country with the manimum gross leasable area

select country, Min([Gross leasable area (Gla)]) as MinLeasableArea
from [largest malls].dbo.malls
group by Country
order by MinLeasableArea desc

--malls opened before 2000

select * 
from [largest malls]..malls
where [Year opened] <=2000
order by [Year opened] desc


--malls opened between 2000 and 2010

select * 
from [largest malls]..malls
where [Year opened] between 2000 and 2010
order by [Year opened] desc

--malls opened after 2010

select * 
from [largest malls]..malls
where [Year opened] >2010
order by [Year opened] desc
 
--year with the maximum gross leasable area
select [Year opened], MAX([Gross leasable area (Gla)]) as MaxLeasableArea
from [largest malls].dbo.malls
group by [Year opened]
order by MaxLeasableArea desc

--country with the maximum gross leasable area

select country, MAX([Gross leasable area (Gla)]) as MaxLeasableArea
from [largest malls].dbo.malls
group by Country
order by MaxLeasableArea desc

--mall with the maximum gross leasable area
select Mall, MAX([Gross leasable area (Gla)]) as MaxLeasableArea
from [largest malls].dbo.malls
group by mall
order by MaxLeasableArea desc

--year with the manimum gross leasable area
select [Year opened], Min([Gross leasable area (Gla)]) as MinLeasableArea
from [largest malls].dbo.malls
group by [Year opened]
order by MinLeasableArea desc

--country with the manimum gross leasable area

select country, Min([Gross leasable area (Gla)]) as MinLeasableArea
from [largest malls].dbo.malls
group by Country
order by MinLeasableArea desc

--mall with the manimum gross leasable area
select Mall, Min([Gross leasable area (Gla)]) as MinLeasableArea
from [largest malls].dbo.malls
group by mall
order by MinLeasableArea desc



