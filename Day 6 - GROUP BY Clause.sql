### Day 6 (09/11): GROUP BY Clause

**Topics:** GROUP BY, aggregating by categories


SELECT service,
SUM(patients_admitted) AS Total_Patient_Admitted,
SUM(patients_refused) AS Total_Patient_Refused,
((SUM(patients_admitted)*100/NULLIF(SUM(patients_request), 0))) AS Admission_Rate
FROM dbo.services_weekly
GROUP BY service
ORDER BY Admission_Rate DESC


💡 What I Learned Today:
 ✅ How to use GROUP BY to aggregate and categorize data efficiently.
 ✅ The importance of NULLIF() to prevent division-by-zero errors.
 ✅ How to calculate custom metrics (like admission rates) using SQL expressions.
 ✅ Real-world reporting often depends on grouping insights by key business dimensions.