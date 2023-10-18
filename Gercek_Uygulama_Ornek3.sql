-- ÞEHÝRLERE GÖRE TOPLAM VERÝLEN SÝPARÝÞ MÝKTARLARI

SELECT
	CT.CITY AS SEHIRADI,
	SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,   --  sipariþ toplam tutarýný toplar.
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,       -- sütunu, sipariþ adedini toplar.
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI         -- sütunu, sipariþ sayýsýný hesaplar.
FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

-- WHERE O.ID=26121

GROUP BY CT.CITY                    -- sorgunun sonucunu þehir adýna göre gruplar.
--ORDER BY CT.CITY                  -- alfabeye göre getirir
--ORDER BY SUM(OD.LINETOTAL) DESC   -- en çok sýparýs verile sehirleri getirir
ORDER BY COUNT(OD.ID) DESC          -- sonuçlarýn sipariþ sayýsýna göre azalan þekilde sýralanmasýný saðlar. 