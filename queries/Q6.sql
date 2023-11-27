
SELECT tree_id, species, health, the_geom
FROM trees
WHERE ST_DWithin(ST_GeomFromText('POINT(-73.96253174434912 40.80737875669467)',4326), the_geom::geography, 804.672)
