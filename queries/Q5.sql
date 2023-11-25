
SELECT z.zipcode, COUNT(t.tree_id) AS total_trees
FROM trees t
JOIN zip_codes z ON ST_Contains(z.the_geom, t.the_geom)
GROUP BY z.zipcode
ORDER BY total_trees DESC;
