SELECT
	t.type,
	ROUND(AVG(r.rating), 2) AS avg_rating,
	MIN(r.rating),
	MAX(r.rating)
FROM
	akas AS a
	INNER JOIN ratings AS r ON r.title_id = a.title_id
	INNER JOIN titles AS t ON t.title_id = a.title_id
WHERE
	a.language = 'de'
	AND (
		a.types = 'imdbDisplay'
		OR a.types = 'original'
	)
GROUP BY
	t.type
ORDER BY
	avg_rating;