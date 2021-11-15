declare
	@ModifiedDate int,
	--@PersonelType nchar(2) = 'SP'
	@PersonelType nchar(2)

set @PersonelType = 'SP'
--set @ModifiedDate = 2010
--select @ModifiedDate = 2010
--select @ModifiedDate
if @ModifiedDate is null 
begin
	select
		BusinessEntityID,
		(isnull(Title,'') + ' ' +  FirstName + ' ' +  isnull(MiddleName,'') + ' ' + 
		LastName) as FullName,
		PersonType as PersonelType,
		year(ModifiedDate) [Date]
	from
		Person.Person
	where PersonType = @PersonelType
end
if @PersonelType is null and @ModifiedDate is not null
begin
	select
			BusinessEntityID,
			(isnull(Title,'') + ' ' +  FirstName + ' ' +  isnull(MiddleName,'') + ' ' + 
			LastName) as FullName,
			PersonType as PersonelType,
			year(ModifiedDate) [Date]
		from
			Person.Person
		where year(ModifiedDate) = @ModifiedDate
end