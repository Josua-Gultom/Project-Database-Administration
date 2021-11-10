
USE projectlab

begin transaction

--1 USR009 yang bernama fihkri, ingin membeli film lagi, dia membeli film pada tanggal 20 juni 2020
INSERT INTO SalesTranscation(SalesTranscationID, UserID, SalesTranscationDate, QuantityEachMovie) VALUES ('SAL016', 'USR009', '2020-06-20', 2)

--2 USR009 membeli film yang berjudul 'Valak'
INSERT INTO DetailSalesTransaction(MovieID, SalesTransactionID) VALUES ('MOV001', 'SAL016')

--3 USR009 membuat review untuk film 'Valak' dan memberikan status recommended
INSERT INTO Review(UserID, MovieID, ReviewRecommendationStatus, ReviewContent, ReviewDate)
	VALUES('USR009', 'MOV001', 'Recommended', 'serem banget filmnya, dan gak ketebak jumpscarenya', '2020-06-22')

rollback
commit
