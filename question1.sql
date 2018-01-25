-- What are the three longest trips on rainy days?
SELECT
	t.duration,
	w.date,
	w.events
FROM 
	trips t
JOIN
	weather w
ON
	t.zip_code = w.ZIP
WHERE 
	events like 'Rain'
ORDER BY 
	t.duration desc
LIMIT 3
