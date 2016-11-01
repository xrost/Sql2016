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
