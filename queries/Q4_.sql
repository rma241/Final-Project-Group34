
SELECT rent."Zip_code", rent."AverageRent"
FROM rent
ORDER BY rent."AverageRent" DESC
UNION nyc_311 (SELECT incident_zip, COUNT(unique_key) as total_complaints
             FROM nyc_311
             WHERE created_date BETWEEN '2023-01-01' AND '2023-01-31'
             GROUP BY incident_zip
LIMIT 5
