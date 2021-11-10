CREATE DATABASE projectlab

USE projectlab

CREATE TABLE [User](
	UserID CHAR(6) PRIMARY KEY  CHECK (UserID LIKE 'USR[0-9][0-9][0-9]') NOT NULL,
	UserNickname VARCHAR(12) CHECK(LEN(UserNickname) > 5 ) NOT NULL,
	UserFullname VARCHAR(30) NOT NULL,
	UserEmail VARCHAR(30) CHECK(UserEmail LIKE '%@%') NOT NULL,
	UserCity VARCHAR(15) NOT NULL,
	Userdescription VARCHAR(100) NOT NULL
)


CREATE TABLE Director(
	DirectorID CHAR(6) PRIMARY KEY CHECK (DirectorID LIKE 'DIR[0-9][0-9][0-9]') NOT NULL,
	DirectorName VARCHAR(30) NOT NULL,
	DirectorEmail VARCHAR(30) CHECK(DirectorEmail LIKE '%@%') NOT NULL,
	DirectorCity VARCHAR(15) NOT NULL,
	DirectorAddress VARCHAR(50) NOT NULL,
	DirectorPhone NUMERIC(15) NOT NULL
)


CREATE TABLE Publisher(
	PublisherID CHAR(6) PRIMARY KEY CHECK (PublisherID LIKE 'PUB[0-9][0-9][0-9]') NOT NULL,
	PublisherName VARCHAR(30) NOT NULL,
	PublisherEmail VARCHAR(30) NOT NULL,
	Publishercity VARCHAR(15) NOT NULL,
	PublisherAddress VARCHAR(50) CHECK(LEN(PublisherAddress) > 15 ) NOT NULL,
	PublisherPhone NUMERIC(15) NOT NULL
)


CREATE TABLE Movie(
	MovieID CHAR(6) PRIMARY KEY CHECK (MovieID LIKE 'MOV[0-9][0-9][0-9]')NOT NULL,
	DirectorID CHAR(6) FOREIGN KEY REFERENCES Director(DirectorID) NOT NULL,
	PublisherID CHAR(6) FOREIGN KEY REFERENCES Publisher(PublisherID) NOT NULL,
	Movietitle VARCHAR(40) NOT NULL,
	MovieDescription VARCHAR(255) CHECK(LEN(MovieDescription) > 20 )NOT NULL,
	MovieReleaseDate DATE CHECK(YEAR(MovieReleaseDate) BETWEEN 2000 AND 2016) NOT NULL,
	MoviePrice INT NOT NULL
)


CREATE TABLE Genre(
	GenreID CHAR(6) PRIMARY KEY CHECK (GenreID LIKE 'GEN[0-9][0-9][0-9]') NOT NULL,
	GenreName VARCHAR(30) NOT NULL
)


CREATE TABLE DetailMovieGenre(
	MovieID CHAR(6) NOT NULL FOREIGN KEY REFERENCES Movie(MovieID),
	GenreID CHAR(6) NOT NULL FOREIGN KEY REFERENCES Genre(GenreID),
	PRIMARY KEY (MovieID, GenreID)
)


CREATE TABLE Review(
	UserID CHAR(6) FOREIGN KEY REFERENCES [User](UserID) NOT NULL,
	MovieID CHAR(6) FOREIGN KEY REFERENCES Movie(MovieID) NOT NULL,
	ReviewRecommendationStatus VARCHAR(20) CHECK(ReviewRecommendationStatus IN('Recommended', 'Not Recommended')) NOT NULL,
	ReviewContent VARCHAR(100) CHECK(LEN(ReviewContent) > 20 ) NOT NULL,
	ReviewDate DATE NOT NULL
)


CREATE TABLE SalesTranscation(
	SalesTranscationID CHAR(6) PRIMARY KEY CHECK (SalesTranscationID LIKE 'SAL[0-9][0-9][0-9]')NOT NULL,
	UserID CHAR(6) FOREIGN KEY REFERENCES [User](UserID) NOT NULL,
	SalesTranscationDate DATE NOT NULL,
	QuantityEachMovie INT NOT NULL
)

CREATE TABLE DetailSalesTransaction(
	MovieID CHAR(6) NOT NULL FOREIGN KEY REFERENCES Movie(MovieID),
	SalesTransactionID CHAR(6) NOT NULL FOREIGN KEY REFERENCES SalesTranscation(SalesTranscationID),
	PRIMARY KEY (MovieID, SalesTransactionID)
)