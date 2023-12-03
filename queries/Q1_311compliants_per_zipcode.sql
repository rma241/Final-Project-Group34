
SELECT zipcode, COUNT(*) as total_complaints
FROM nyc_311
WHERE created_date BETWEEN '2022-10-01' AND '2023-09-30'
AND zipcode IS NOT NULL
GROUP BY zipcode
ORDER BY total_complaints DESC;
