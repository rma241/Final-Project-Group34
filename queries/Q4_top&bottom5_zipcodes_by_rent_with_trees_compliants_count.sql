
WITH subquery AS (SELECT rent.zipcode, rent."2023-01-31", total_trees, total_complaints
FROM rent
JOIN (SELECT nyc_311.zipcode, COUNT(*) as total_complaints
            FROM nyc_311
            WHERE created_date BETWEEN '2023-01-01' AND '2023-01-31'
            GROUP BY nyc_311.zipcode
) nyc_311
ON rent.zipcode = nyc_311.zipcode
JOIN (SELECT trees.zipcode, COUNT(trees.tree_id) as total_trees
            FROM trees
            GROUP BY trees.zipcode
) trees
ON rent.zipcode = trees.zipcode
WHERE rent."2023-01-31" IS NOT NULL
) 

(SELECT zipcode, ROUND(CAST("2023-01-31" AS NUMERIC),2), total_trees, total_complaints 
FROM subquery
ORDER BY "2023-01-31" DESC
LIMIT 5)
UNION
(SELECT zipcode, ROUND(CAST("2023-01-31" AS NUMERIC),2), total_trees, total_complaints 
FROM subquery
ORDER BY "2023-01-31" ASC
LIMIT 5)

