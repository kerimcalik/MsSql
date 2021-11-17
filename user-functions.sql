create function fnGetPersonName(
	@PersonId int
)returns nvarchar(160)
as
begin
	declare
		@personName nvarchar(160)

	set @personName = (
						select
							top 1
							isnull(Title,'') + 
							FirstName + ' ' + 
							ISNULL(MiddleName,'') + ' ' +
							LastName
						from Person.Person
						where BusinessEntityID = @PersonId
						)

	return @personName

end