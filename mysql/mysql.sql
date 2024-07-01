SELECT COUNT(motorcycles.id) as moto_count, type.name FROM motorcycles_type as type
INNER JOIN motorcycles ON motorcycles.id = type.motorcycles_id
WHERE motorcycles.discontinued = false
GROUP BY type.name