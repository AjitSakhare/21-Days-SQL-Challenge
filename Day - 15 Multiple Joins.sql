### Day 15 (19/11): Multiple Joins

**Topics:** Joining more than two tables, complex relationships

SELECT 
    sw.service,
    SUM(sw.patients_admitted) AS total_admitted,
    SUM(sw.patients_refused) AS total_refused,
    AVG(sw.patient_satisfaction) AS avg_satisfaction,
    COUNT(DISTINCT s.staff_id) AS staff_assigned,
    SUM(CASE WHEN ss.week = 20 AND ss.present = 1 THEN 1 ELSE 0 END) AS staff_present
FROM services_weekly sw
LEFT JOIN staff s 
    ON sw.service = s.service
LEFT JOIN staff_schedule ss 
    ON s.staff_id = ss.staff_id
WHERE sw.week = 20
GROUP BY sw.service
ORDER BY total_admitted DESC;


📘 What I Learned Today:

✅ How to join three tables smoothly
✅ Why LEFT JOIN is used to avoid losing data
✅ How to calculate metrics from different tables
✅ How SQL brings different datasets together to form one clear report
✅ Real-world analytics always needs multiple joins