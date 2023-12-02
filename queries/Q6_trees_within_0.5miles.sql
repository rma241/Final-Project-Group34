
SELECT tree_id, species, health, (ST_X(the_geom), ST_Y(the_geom))
FROM trees
WHERE ST_DWithin(ST_GeomFromText('POINT(-73.96253174434912 40.80737875669467)',4326), the_geom::geography, 804.672)
