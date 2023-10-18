-- Kullancý Adý Soaydý, Ýl, Ýlçe, Semt, Açýk adres, Sipariþ ID, Tarih, Toplam tutar, Ödeme tarihi, 
-- Banka onay kodu, Fatura tarihi, Kargo fiþ no

SELECT
	U.USERNAME_ AS KULLANICIADI,U.NAMESURNAME AS ADSOYAD,
	CT.CITY AS IL,T.TOWN AS ILCE,D.DISTRICT AS SEMT,A.ADDRESSTEXT AS ACIKADRES,
	O.ID AS SIPARISID,O.DATE_ AS TARIH,O.TOTALPRICE AS TOPLAMTUTAR,
	P.DATE_ AS ODEMETARIHI,P.APPROVECODE AS BANKAONAYKODU,
	I.DATE_ AS FATURATARIHI,I.CARGOFICHENO AS KARGOFISNO
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID

WHERE U.NAMESURNAME = 'Talha CANIKARA'


/*-
Bu SQL sorgusu, "ORDERS" adlý bir tabloyu kullanarak veritabanýndan belirli bilgileri çeker ve bu bilgileri farklý tablolardan 
(USERS, ADDRESS, CITIES, TOWNS, DISTRICTS ve PAYMENTS) çeþitli JOIN iþlemleri kullanarak birleþtirir.
Ýþte bu sorgunun her bir bölümünün ne yaptýðýnýn açýklamalarý:

1. Ýlk satýr, sorgunun sonucunda dönen sütunlarýn adlarýný belirtir.
2. "ORDERS" tablosunu temsil eden "O" aliasýný kullanarak sorgunun ana tablosunu seçeriz.
3. "USERS" tablosunu "U" aliasý ile JOIN ederiz ve kullanýcý adý ve ad-soyad bilgilerini çekeriz.
4. "ADDRESS" tablosunu "A" aliasý ile JOIN ederiz ve açýk adresi çekeriz.
5. "CITIES" tablosunu "CT" aliasý ile JOIN ederiz ve þehir (il) bilgisini çekeriz.
6. "TOWNS" tablosunu "T" aliasý ile JOIN ederiz ve ilçe bilgisini çekeriz.
7. "DISTRICTS" tablosunu "D" aliasý ile JOIN ederiz ve semt bilgisini çekeriz.
8. "PAYMENTS" tablosunu "P" aliasý ile JOIN ederiz ve ödeme tarihini ve banka onay kodunu çekeriz.

Sonuç olarak, bu sorgu veritabanýndan sipariþlerle ilgili detaylý bilgileri ve bu sipariþlere ait 
kullanýcý, adres, þehir, ilçe, semt, ödeme ve kargo bilgilerini çeker. 
Her JOIN iþlemi, ilgili tablolardaki verileri birleþtirir ve sonucunda istenen sütunlarý seçer.
-*/