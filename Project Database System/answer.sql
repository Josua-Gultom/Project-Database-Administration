
USE projectlab

-- 1
SELECT m.MovieID, Movietitle, MovieDescription, 'Reviews Movie' = CAST(COUNT(ReviewContent) AS VARCHAR) + ' review(s)'
FROM Movie m JOIN Review r ON m.MovieID = r.MovieID JOIN [User] u ON r.UserID = u.UserID 
WHERE u.UserCity LIKE 'Bandung' OR r.ReviewRecommendationStatus LIKE 'Not Recommended'
GROUP BY m.MovieID, Movietitle, MovieDescription

--2
SELECT g.GenreID, g.GenreName, 'Total Movie'= COUNT(m.MovieID)
FROM Movie m JOIN DetailMovieGenre dmg ON m.MovieID = dmg.MovieID JOIN Genre g ON dmg.GenreID=g.GenreID JOIN Director d on m.DirectorID = d.DirectorID
WHERE d.DirectorID BETWEEN 'DIR004' AND 'DIR008' AND DATENAME(MONTH,m.MovieReleaseDate) = 'February'
GROUP BY g.GenreID, g.GenreName

--3
SELECT d.DirectorID, d.DirectorName, [Local Phone] = '+62' + CAST(d.DirectorPhone AS VARCHAR), [Movie Sold] = SUM(st.QuantityEachMovie), [Total Transaction] = COUNT(dst.SalesTransactionID)
fROM Director d join Movie m ON d.DirectorID=m.MovieID join DetailSalesTransaction dst ON m.MovieID=dst.MovieID JOIN SalesTranscation st on dst.SalesTransactionID=st.SalesTranscationID
WHERE d.DirectorID BETWEEN 'DIR003' AND 'DIR009' AND st.QuantityEachMovie > 20
GROUP BY d.DirectorID, d.DirectorName, d.DirectorPhone


--4
SELECT u.UserNickname, [User City]  = UPPER(u.UserCity), [Total Movie Purchased] = SUM(st.QuantityEachMovie), 'Movie Owned' = COUNT(dss.MovieID)
FROM [User] u JOIN SalesTranscation st ON u.UserID=st.UserID JOIN DetailSalesTransaction dss ON st.SalesTranscationID=dss.SalesTransactionID JOIN Movie m ON dss.MovieID=m.MovieID
WHERE u.UserID = 'USR002' OR u.UserID = 'USR003' AND MONTH(MovieReleaseDate)%2 = 0
GROUP BY u.UserNickname, u.UserCity


--5 
SELECT [Numeric User id] = SUBSTRING(u.UserID,4,3), [Nickname] = UPPER(u.UserNickname)
FROM [User] u JOIN SalesTranscation st ON u.UserID = st.UserID,
	(
		SELECT [AVGQty] = AVG(st.QuantityEachMovie)
		FROM SalesTranscation st  
	)AS Average
WHERE st.QuantityEachMovie > Average.AVGQty AND u.UserNickname LIKE '%l%'
GROUP BY u.UserID, u.UserNickname


--6
SELECT DISTINCT m.MovieID, m.Movietitle, p.PublisherName, [Publisher Email]= SUBSTRING(p.PublisherEmail,1,CHARINDEX('@',p.PublisherEmail)-1)
FROM Movie m join Publisher p ON m.PublisherID=m.PublisherID JOIN DetailSalesTransaction dst ON m.MovieID=dst.MovieID JOIN SalesTranscation st ON dst.SalesTransactionID=st.SalesTranscationID,
	(
		SELECT [Max qty] = MAX(st.QuantityEachMovie), [date] = MAX(st.SalesTranscationDate)
		FROM SalesTranscation st
		WHERE DAY(st.SalesTranscationDate) = 22
	) AS total
WHERE st.QuantityEachMovie > total.[Max qty] AND MONTH(st.SalesTranscationDate) = MONTH(total.[date]) AND DAY(st.SalesTranscationDate) != DAY(total.date)
GROUP BY m.MovieID, m.Movietitle, p.PublisherName, p.PublisherEmail


--7
SELECT d.DirectorID, d.DirectorName, [Movie Title] = LOWER(m.Movietitle), [Total Genre] = CAST(COUNT(dmg.GenreID) as VARCHAR) + ' genre(s)'
FROM Director d JOIN Movie m ON d.DirectorID=m.DirectorID join DetailMovieGenre dmg ON m.MovieID=dmg.MovieID,
	(
		SELECT [tgl rilis] = MAX(m.MovieReleaseDate)
		FROM Movie m WHERE MONTH(m.MovieReleaseDate) = 9
	) AS rilis
WHERE DAY(rilis.[tgl rilis]) - 1 = DAY(m.MovieReleaseDate) AND MONTH(rilis.[tgl rilis]) = MONTH(m.MovieReleaseDate) AND YEAR(rilis.[tgl rilis]) = YEAR(m.MovieReleaseDate)
GROUP BY d.DirectorID, d.DirectorName, m.Movietitle


--8
SELECT u.UserNickname, u.UserFullname, [User First Name] = SUBSTRING(u.UserFullname, 1, CHARINDEX(' ', u.UserFullname) - 1), [Total Quantity] = SUM(st.QuantityEachMovie)
FROM [User] u JOIN SalesTranscation st ON u.UserID=st.UserID, 
	(
		SELECT [Max Qty] = MAX(st.QuantityEachMovie), [Total Quantity] = SUM(st.QuantityEachMovie)
		FROM SalesTranscation st
	) AS TotalQty
WHERE DAY(st.SalesTranscationDate) = 20 AND TotalQty.[Total Quantity] >= TotalQty.[Max Qty]
GROUP BY u.UserNickname, u.UserFullname


--9
GO
CREATE VIEW [CustomUserViewer] AS
SELECT u.UserID, u.UserNickname, [Maximum Quantity] = MAX(st.QuantityEachMovie), [Minimum Quantity] = MIN(st.QuantityEachMovie)
FROM [User] u JOIN SalesTranscation st ON u.UserID = st.UserID join DetailSalesTransaction dst ON st.SalesTranscationID=dst.SalesTransactionID
WHERE DAY(st.SalesTranscationDate) = 19 AND u.UserNickname LIKE '%h%'
GROUP BY u.UserID, u.UserNickname


--10
GO
CREATE VIEW [CustomPublisherViewer] AS
SELECT p.PublisherName, m.Movietitle, [Release Date] = FORMAT(m.MovieReleaseDate,'dd-mm-yyyy'), [Total Purchase] = SUM(st.QuantityEachMovie), [Minimun Purchase] = MIN(st.QuantityEachMovie)
FROM Publisher p JOIN Movie m ON p.PublisherID=m.PublisherID JOIN DetailSalesTransaction dst ON m.MovieID=dst.MovieID JOIN SalesTranscation st ON dst.SalesTransactionID=st.SalesTranscationID
WHERE p.Publishercity = 'Jakarta' AND DATENAME(MONTH,m.MovieReleaseDate) = 'July'
GROUP BY p.PublisherName, m.Movietitle, m.MovieReleaseDate
