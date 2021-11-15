declare 
	@top int = 1,@sql nvarchar(max)

set @sql = 'select top ' + cast(@top as nvarchar) + ' * 
				from Production.Product where Color = ''Red'''

print @sql

execute sp_executesql @sql

select * from Production.Product where Color = 'Red' and Name like '%road%'

