CREATE TABLE dbo.Clients(
	ClientId INT NOT NULL,
	ClientName NVARCHAR(50) NOT NULL,
 CONSTRAINT PK_Clients PRIMARY KEY CLUSTERED 
(
	ClientId ASC
)
) ON [PRIMARY]

GO

INSERT INTO Clients (ClientId, ClientName)
VALUES 
(1, 'Lehman'),
(2, 'BAML'),
(3, 'Credit Suisse'),
(4, 'CITI'),
(5, 'Wells Fargo')
GO
