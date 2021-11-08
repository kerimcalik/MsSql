select 
	PhoneNumber,
	PhoneNumberTypeID,
	case PhoneNumberTypeID
		when 1 then 'Cep telefonu'
		when 2 then 'Ev telefonu'
		when 3 then 'Ýþ telefonu'
	end as 'Telefon Tipi'
from Person.PersonPhone p
