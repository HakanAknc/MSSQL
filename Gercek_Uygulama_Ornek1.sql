-- Kullanc� Ad� Soayd�, �l, �l�e, Semt, A��k adres, Sipari� ID, Tarih, Toplam tutar, �deme tarihi, 
-- Banka onay kodu, Fatura tarihi, Kargo fi� no

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
Bu SQL sorgusu, "ORDERS" adl� bir tabloyu kullanarak veritaban�ndan belirli bilgileri �eker ve bu bilgileri farkl� tablolardan 
(USERS, ADDRESS, CITIES, TOWNS, DISTRICTS ve PAYMENTS) �e�itli JOIN i�lemleri kullanarak birle�tirir.
��te bu sorgunun her bir b�l�m�n�n ne yapt���n�n a��klamalar�:

1. �lk sat�r, sorgunun sonucunda d�nen s�tunlar�n adlar�n� belirtir.
2. "ORDERS" tablosunu temsil eden "O" alias�n� kullanarak sorgunun ana tablosunu se�eriz.
3. "USERS" tablosunu "U" alias� ile JOIN ederiz ve kullan�c� ad� ve ad-soyad bilgilerini �ekeriz.
4. "ADDRESS" tablosunu "A" alias� ile JOIN ederiz ve a��k adresi �ekeriz.
5. "CITIES" tablosunu "CT" alias� ile JOIN ederiz ve �ehir (il) bilgisini �ekeriz.
6. "TOWNS" tablosunu "T" alias� ile JOIN ederiz ve il�e bilgisini �ekeriz.
7. "DISTRICTS" tablosunu "D" alias� ile JOIN ederiz ve semt bilgisini �ekeriz.
8. "PAYMENTS" tablosunu "P" alias� ile JOIN ederiz ve �deme tarihini ve banka onay kodunu �ekeriz.

Sonu� olarak, bu sorgu veritaban�ndan sipari�lerle ilgili detayl� bilgileri ve bu sipari�lere ait 
kullan�c�, adres, �ehir, il�e, semt, �deme ve kargo bilgilerini �eker. 
Her JOIN i�lemi, ilgili tablolardaki verileri birle�tirir ve sonucunda istenen s�tunlar� se�er.
-*/