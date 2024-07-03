SELECT
    COUNT(motorcycles.id) as moto_count,
    type.name
FROM
    motorcycle_types as type
LEFT JOIN
    motorcycles
ON
    motorcycles.motorcycle_type_id = type.id
    AND motorcycles.discontinued = false
GROUP BY
    type.name
ORDER BY
	moto_count DESC;
