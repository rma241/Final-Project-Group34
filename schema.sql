
    CREATE TABLE IF NOT EXISTS zip_codes (
        id INTEGER PRIMARY KEY,
        zipcode VARCHAR,
        the_geom GEOMETRY
    )
    
    CREATE TABLE IF NOT EXISTS nyc_311 (
        id INTEGER PRIMARY KEY,
        created_date DATE,
        zipcode VARCHAR,
        complaint_type VARCHAR,
        longitude REAL,
        latitude REAL
    )
    
    CREATE TABLE IF NOT EXISTS trees (
        tree_id INTEGER PRIMARY KEY,
        zipcode VARCHAR,
        the_geom GEOMETRY,
        health VARCHAR,
        species VARCHAR
    )
    
CREATE TABLE IF NOT EXISTS rent (
    regionid INTEGER PRIMARY KEY,
    zipcode VARCHAR,
    "2023-01-31" REAL,
    "2023-08-31" REAL,
    "2023-09-30" REAL,
    average_rent REAL
)
