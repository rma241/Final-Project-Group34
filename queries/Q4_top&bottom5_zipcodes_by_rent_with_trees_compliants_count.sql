
(SELECT rent.zipcode, rent."2015-01-31", total_trees, total_complaints
FROM rent
JOIN (SELECT nyc_311.zipcode, COUNT(nyc_311.unique_key) as total_complaints
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
WHERE rent."2015-01-31" IS NOT NULL
ORDER BY rent."2015-01-31" DESC
LIMIT 5)
UNION
(SELECT rent.zipcode, rent."2015-01-31", total_trees, total_complaints
FROM rent
JOIN (SELECT nyc_311.zipcode, COUNT(nyc_311.unique_key) as total_complaints
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
WHERE rent."2015-01-31" IS NOT NULL
ORDER BY rent."2015-01-31" ASC
LIMIT 5)
