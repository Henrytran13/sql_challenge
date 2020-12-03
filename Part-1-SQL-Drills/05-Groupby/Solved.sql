-- Query for the average duration (in seconds) of UFO sightings by state, respectively
SELECT
	'state',
	AVG ('duration')
FROM
	usa_ufo
WHERE
	'country' = 'us'
	AND 'state' IS NOT NULL
GROUP BY
	'state'