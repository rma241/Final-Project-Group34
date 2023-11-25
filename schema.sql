
    CREATE TABLE IF NOT EXISTS zip_codes (
        zipcode VARCHAR,
        geometry GEOMETRY
    )
    
    CREATE TABLE IF NOT EXISTS nyc_311 (
        unique_key INTEGER PRIMARY KEY,
        created_date DATE,
        zipcode GEOMETRY
    )
    
    CREATE TABLE IF NOT EXISTS trees (
        tree_id INTEGER PRIMARY KEY,
        zipcode VARCHAR,
        geometry GEOMETRY
    )
    
    CREATE TABLE IF NOT EXISTS rent (
        RegionID INTEGER PRIMARY KEY,
        zipcode VARCHAR,
        average_rent NUMERIC
    )
    