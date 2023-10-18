SELECT U.NAMESURNAME,U.EMAIL,A.ADDRESSTEXT,
C.COUNTRY,CT.CITY,T.TOWN,D.DISTRICT
FROM 
USERS U
JOIN ADDRESS A ON A .USERID=U.ID
JOIN COUNTRIES C ON C.ID=A.COUNTRYID
JOIN CITIES CT ON CT.ID=A.CITYID
JOIN TOWNS T ON T.ID=A.TOWNID
JOIN DISTRICTS D ON D.ID=A.DISTRICTID