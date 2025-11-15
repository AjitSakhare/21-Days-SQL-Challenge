Day 12 (15/11): NULL Handling in SQL — IS NULL, IS NOT NULL & COALESCE

Today’s focus was on understanding and managing NULL values, one of the most common challenges in real datasets.

Because even a small NULL can silently break your averages, comparisons, and reports!

💡 Daily Challenge:
 Analyze weekly performance by comparing weeks with events vs without events.
 Show:
Event Status (With Event / No Event)
Count of Weeks
Average Patient Satisfaction
Average Staff Morale
Ordered by highest satisfaction.


SELECT 
 CASE 
 WHEN event IS NULL 
 OR event = 'none' THEN 'No Event'
 ELSE 'With Event'
 END AS event_status,
 COUNT(*) AS week_count,
 AVG(patient_satisfaction) AS avg_satisfaction,
 AVG(staff_morale) AS avg_morale
FROM services_weekly
GROUP BY 
 CASE 
 WHEN event IS NULL 
 OR event = 'none' THEN 'No Event'
 ELSE 'With Event'
 END
ORDER BY avg_satisfaction DESC;

📘 What I Learned Today:
 ✅ Why NULL ≠ empty — it's “unknown,” so normal comparisons don’t work.
 ✅ How IS NULL / IS NOT NULL help correctly filter missing data.
 ✅ How COALESCE() replaces NULL with fallback values to keep reports clean.
 ✅ Clean handling of NULLs makes analysis more reliable and trustworthy.
