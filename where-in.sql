select 
	count(*) toplam,
	Color
from 
	Production.Product
where
	--Color is not null and
	Color in('Black','Yellow','Blue')
	--(Color = 'Black' or
	--Color = 'Yellow' or
	--Color = 'Blue')
	--Len(Color) > 0
	--color = 'Red'
group by Color
order by toplam desc