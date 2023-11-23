
    CREATE TABLE IF NOT EXISTS zip_codes (
        id INTEGER PRIMARY KEY,
        zipcode VARCHAR,
        geometry GEOMETRY
    )
    
    CREATE TABLE IF NOT EXISTS nyc_311 (
        id INTEGER PRIMARY KEY,
        created_date DATE,
        zipcode GEOMETRY
    )
    
    CREATE TABLE IF NOT EXISTS trees (
        tree_id INTEGER PRIMARY KEY,
        zipcode VARCHAR,
        geometry GEOMETRY
    )
    
    CREATE TABLE IF NOT EXISTS rent (
        id INTEGER PRIMARY KEY,
        zipcode VARCHAR,
        average_rent NUMERIC
    )
    