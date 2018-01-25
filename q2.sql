SELECT
	stations.name,
    status.bikes_available,
	status.station_id,
	count(stations.name)
FROM
	status
JOIN
	stations
ON
	status.station_id = stations.station_id
WHERE
	status.bikes_available = 0
GROUP BY stations.name
ORDER BY 4 DESC
