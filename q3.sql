--Return a list of stations with a count of number of trips
--starting at that station but ordered by dock count.
SELECT 
	s.name,
	s.dockcount,
	COUNT(t.start_station)
FROM 
	trips t
JOIN 
	stations s
ON
	t.start_station = s.name
GROUP BY 
	t.start_station
ORDER BY 2	
	