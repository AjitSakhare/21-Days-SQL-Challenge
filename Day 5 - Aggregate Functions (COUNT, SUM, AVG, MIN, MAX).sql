### Day 5 (07/11): Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)

**Topics:** COUNT, SUM, AVG, MIN, MAX functions


select 
 COUNT(patients_admitted) as total_patients_admitted
,COUNT(patients_refused) as total_patients_refused
,CAST(ROUND(AVG(CAST(patient_satisfaction AS DECIMAL(5,2))), 2) AS DECIMAL(5,2)) AS avg_patient_satisfaction
FROM dbo.services_weekly

What I Learned Today:

How to summarize datasets using COUNT, SUM, AVG, MIN, and MAX.
The importance of ROUND() and CAST() for precision in numeric outputs.
Aggregate functions are vital in real-world reporting, dashboards, and analytics.
SQL isn’t just about queries — it’s about telling stories through data! 