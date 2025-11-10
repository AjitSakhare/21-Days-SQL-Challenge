### Day 7 (10/11): HAVING Clause

**Topics:** HAVING clause, filtering aggregated results


select
service,
sum(patients_refused) as refused_patients,
avg(patient_satisfaction) as satisfaction
from dbo.services_weekly 
GROUP BY service
HAVING sum(patients_refused) >100  
and AVG(patient_satisfaction) < 80

💡 What I Learned Today:
 ✅ Difference between WHERE and HAVING — WHERE filters before aggregation, HAVING filters after.
 ✅ How to combine GROUP BY with conditions on aggregate functions like SUM() and AVG().
 ✅ The power of post-aggregation filtering to find outliers and underperforming categories.
 ✅ Real-world use case: spotting services that might need operational improvement or support.