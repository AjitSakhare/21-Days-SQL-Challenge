### Day 9 (12/11): Date Functions

Topics: DATE functions, date arithmetic, EXTRACT


SELECT 
    service,
    COUNT(patient_id) AS total_patients,
    CAST(AVG(CAST(DATEDIFF(DAY, arrival_date, departure_date) AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS avg_stay_days
FROM patients
GROUP BY service
HAVING AVG(CAST(DATEDIFF(DAY, arrival_date, departure_date) AS DECIMAL(10,2))) > 7
ORDER BY avg_stay_days DESC;

💡 What I Learned Today:
✅ How to calculate date differences using DATEDIFF()
✅ How to apply AVG() with CAST() to get precise decimal values
✅ The use of HAVING to filter aggregated results
✅ How date arithmetic helps in performance and operational insights (e.g., average hospital stay trends)