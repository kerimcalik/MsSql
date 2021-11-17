alter function fnClearPhone(
	@phone varchar(20)
) returns varchar(11)
as
begin
	declare @p varchar(20)
	set @p = @phone

	set @p = replace(@p, ' ', '')

	if isnumeric(@p) = 1 begin
		if len(@p) <= 13 begin
			set @p = replace(@p, '+90', '0')			
			set @p = replace(@p, '(', '')
			set @p = replace(@p, ')', '')
			set @p = rtrim(@p)
			set @p = ltrim(@p)
			set @p = replace(@p, '-', '')
		end else begin
			set @p = ''
		end
	end else begin
		set @p = ''
	end

	return @p
end