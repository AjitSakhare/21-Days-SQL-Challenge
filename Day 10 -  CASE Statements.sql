### Day 10 (13/11): CASE Statements

**Topics:** CASE WHEN, conditional logic, derived columns

### Daily Challenge:

**Question:** Create a service performance report showing service name, total patients admitted, and a performance category based on the following:
 'Excellent' if avg satisfaction >= 85, 'Good' if >= 75, 'Fair' if >= 65, otherwise 'Needs Improvement'. 
Order by average satisfaction descending.

select service,
       SUM(patients_admitted) as total_patients_admitted,
       CASE 
         WHEN AVG(patient_satisfaction) >=85 THEN 'Excellent' 
         WHEN AVG(patient_satisfaction) >=75 AND AVG(patient_satisfaction) <85 THEN 'Good' 
         WHEN AVG(patient_satisfaction) >=65 AND AVG(patient_satisfaction) <75 THEN 'Fair' 
         ELSE 'Needs Improvement'
       END as performance_category
from services_weekly
group by service
order by AVG(patient_satisfaction) desc;


🎯 What I Learned Today:

How to use CASE WHEN for conditional logic directly in SQL.

How to combine GROUP BY with CASE to build powerful summarized reports.

SQL can not only analyze data but also categorize and classify it!