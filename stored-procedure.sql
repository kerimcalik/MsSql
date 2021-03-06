USE [AdventureWorks2012]
GO
/****** Object:  StoredProcedure [dbo].[spBonusLimit]    Script Date: 12.11.2021 21:29:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spBonusLimit]
	@bonus money
as
begin
	
	if @bonus > 4000 begin

		create table #temp(
			id int,
			FirstName nvarchar(50),
			LastName nvarchar(50),
			Bonus money
		)

		insert into #temp 

		select 
			sp.BusinessEntityID,
			p.FirstName,
			p.LastName,
			sp.Bonus 
		from Sales.SalesPerson sp
		inner join Person.Person p
		on sp.BusinessEntityID = p.BusinessEntityID;

		select * from #temp
		drop table #temp
	end else if @bonus <= 2000 begin
		select count(1) from Sales.SalesPerson
	end

	
end