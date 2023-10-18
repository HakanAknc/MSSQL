# MSSQL

# SQL Sorgusu Açıklaması

Bu README dosyası, SQL sorgusu ve ilgili tabloların kullanımı hakkında bilgi vermek için oluşturulmuştur.

## SQL Sorgusu

Bu SQL sorgusu, veritabanından belirli bilgileri çekmek için kullanılır. Sorgunun amacı ve işleyişi aşağıdaki gibidir:

- `SELECT` ifadesi, sorgu sonucunda dönen sütunların adlarını belirtir.
- İlgili tabloyu temsil eden bir alias kullanarak, ana tabloyu seçeriz. Örneğin, `FROM ORDERS O` ifadesi "ORDERS" tablosunu "O" aliasıyla temsil eder.
- JOIN işlemleri, farklı tabloları birleştirir ve ilişkilendirdiğimiz sütunlar aracılığıyla verileri getirir. Örneğin, `INNER JOIN USERS U ON U.ID=O.USERID` ifadesi, "USERS" tablosunu "U" aliasıyla kullanarak "USERID" sütunuyla "ID" sütununu eşleştirir.
- WHERE ifadesi, verileri belirli bir koşula göre filtreler. Örneğin, `WHERE U.NAMESURNAME = 'Talha CANIKARA'`, kullanıcı adı ve ad-soyadı "Talha CANIKARA" olan siparişleri getirir.

## Tablolar

Bu SQL sorgusu aşağıdaki tabloları kullanır:

- `ORDERS`: Siparişlerin detaylarını içeren ana tablo.
- `USERS`: Kullanıcıların bilgilerini içeren tablo.
- `ADDRESS`: Kullanıcı adreslerini içeren tablo.
- `CITIES`: Şehir (il) bilgilerini içeren tablo.
- `TOWNS`: İlçe bilgilerini içeren tablo.
- `DISTRICTS`: Semt bilgilerini içeren tablo.
- `PAYMENTS`: Ödeme bilgilerini içeren tablo.
- `INVOICES`: Fatura bilgilerini içeren tablo.

## Sorgu Sonucu

Bu SQL sorgusu sonucunda aşağıdaki bilgiler elde edilir:

- Kullanıcı adı ve ad-soyadı
- Şehir (il), ilçe, semt ve açık adres
- Sipariş ID, sipariş tarihi ve toplam tutar
- Ödeme tarihi ve banka onay kodu
- Fatura tarihi ve kargo fiş numarası

Bu bilgiler, belirli bir kullanıcının verdiği siparişlerin detaylarını içerir.
