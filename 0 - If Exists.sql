DROP TABLE IF EXISTS #temp

CREATE TABLE #temp
(
	id INT,
	name NVARCHAR(25)
)

SELECT * FROM #temp

DROP TABLE IF EXISTS #temp

GO


EXEC sp_set_session_context @key='cid', @value=1, @readonly=1

EXEC sp_set_session_context @key='userId', @value='Ross'

SELECT SESSION_CONTEXT(N'cid'); 