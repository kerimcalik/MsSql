insert into Table_1(id,name) values(1, 'deneme')

--null olmayan sütuna veri yazýlamadý
insert into Table_1(id) values(2)

--verilen sütun sayýsýyla aktarýlan deðer kümesi ayný sayýda olmalý
insert into Table_1(id) values(2, 'deneme')

insert into Table_1(id, name) values(2)

--sütun veri tipinin sýnýrlamasýný aþarsa hata oluþturur
insert into Table_1(id, name) values(3, '12345678901')

insert into Table_1(name) values('12345678')

select * from Table_1