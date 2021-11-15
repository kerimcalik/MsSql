declare 	
	@top int = 10,	
	@Name nvarchar(50),	
	@Color nvarchar(15) = 'Silver',	
	@sql nvarchar(max)

set @sql = 'select top ' + cast(@top as nvarchar) + ' * 
	from Production.Product where Color = ''' + @Color + ''' and Name like ''%' + @Name + '%'''

--print @sql
execute sp_executesql @sql
