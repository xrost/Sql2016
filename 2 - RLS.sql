DROP SCHEMA IF EXISTS Security
GO

CREATE SCHEMA Security
GO

DROP FUNCTION IF EXISTS Security.EntitlementCheck
GO

CREATE FUNCTION Security.EntitlementCheck(@ClientId AS INT) RETURNS TABLE  
WITH SCHEMABINDING  
AS  
	RETURN SELECT 1 AS Result
	WHERE @ClientId = SESSION_CONTEXT(N'cid')
GO

DROP SECURITY POLICY IF EXISTS dbo.EntitlementPolicy
GO

CREATE SECURITY POLICY EntitlementPolicy  
ADD FILTER PREDICATE Security.EntitlementCheck(ClientId) ON dbo.Users
WITH (STATE = ON)
GO

SELECT * FROM Users

EXEC sp_set_session_context @key='cid', @value=1

SELECT SESSION_CONTEXT(N'cid'); 