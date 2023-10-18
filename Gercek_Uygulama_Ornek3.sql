-- �EH�RLERE G�RE TOPLAM VER�LEN S�PAR�� M�KTARLARI

SELECT
	CT.CITY AS SEHIRADI,
	SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,   --  sipari� toplam tutar�n� toplar.
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,       -- s�tunu, sipari� adedini toplar.
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI         -- s�tunu, sipari� say�s�n� hesaplar.
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

GROUP BY CT.CITY                    -- sorgunun sonucunu �ehir ad�na g�re gruplar.
--ORDER BY CT.CITY                  -- alfabeye g�re getirir
--ORDER BY SUM(OD.LINETOTAL) DESC   -- en �ok s�par�s verile sehirleri getirir
ORDER BY COUNT(OD.ID) DESC          -- sonu�lar�n sipari� say�s�na g�re azalan �ekilde s�ralanmas�n� sa�lar. 