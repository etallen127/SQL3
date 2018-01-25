SELECT 
	t.start_date,
	t.duration,
	w.Events,
	w.Date
FROM 
	trips t
JOIN 
	weather w
ON 
	t.start_date = w.Date
WHERE 
	w.Events LIKE 'Rain'
ORDER BY
	t.duration
LIMIT 
	3