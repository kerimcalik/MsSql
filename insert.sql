insert into Table_1(id,name) values(1, 'deneme')

--null olmayan s�tuna veri yaz�lamad�
insert into Table_1(id) values(2)

--verilen s�tun say�s�yla aktar�lan de�er k�mesi ayn� say�da olmal�
insert into Table_1(id) values(2, 'deneme')

insert into Table_1(id, name) values(2)

--s�tun veri tipinin s�n�rlamas�n� a�arsa hata olu�turur
insert into Table_1(id, name) values(3, '12345678901')

insert into Table_1(name) values('12345678')

select * from Table_1