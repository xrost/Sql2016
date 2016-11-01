SELECT
	clients.ClientId AS Id,
	clients.ClientName AS Name,
	users.FirstName,
	users.LastName	
FROM Clients Clients
JOIN Users Users ON clients.ClientId = users.ClientId
ORDER BY
	Clients.ClientId
FOR JSON AUTO
GO

SELECT
	c.ClientId AS [Id],
	c.ClientName AS [Name],
	(SELECT
		u.FirstName,
		u.LastName,
		u.Login AS [Access.Login],
		u.Password AS [Access.Password]
	FROM
		Users u
	WHERE
		u.ClientId = c.ClientId
	FOR JSON PATH
	) AS Users
FROM Clients c
ORDER BY
	c.ClientId
FOR JSON PATH
