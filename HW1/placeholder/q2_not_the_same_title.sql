SELECT 
	premiered,
	primary_title || " (" || original_title || ")"
FROM 
	titles
WHERE 
	primary_title <> original_title
	and type == 'movie'
	and genres like '%Action%'
ORDER BY 
	premiered desc,
	primary_title asc
LIMIT 
	10