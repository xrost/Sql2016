SELECT * 
FROM Issue 
WHERE 
	ISJSON(StateJson) = 1

SELECT
	JSON_VALUE(StateJson, '$.Issue.Id') AS IssueId,
	JSON_VALUE(StateJson, '$.Tranche.Product.OfferPrice') AS OfferPrice
FROM Issue 
WHERE 
	ISJSON(StateJson) = 1
	--AND JSON_VALUE(StateJson, '$.Tranche.Product.OfferPrice') = 901.0

WITH t AS
(
	SELECT
		JSON_VALUE(StateJson, '$.Issue.Id') AS IssueId,
		JSON_VALUE(StateJson, '$.Tranche.Product.OfferPrice') AS OfferPrice,
		ISJSON(StateJson) AS IsValid
	FROM 
		Issue 
	WHERE 
		ISJSON(StateJson) = 1
)
SELECT * FROM t WHERE /*t.IsValid = 1 AND*/ t.IssueId = 1847526212