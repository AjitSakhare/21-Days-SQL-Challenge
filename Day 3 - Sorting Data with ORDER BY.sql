### Day 3 (05/11): Sorting Data with ORDER BY

**Topics:** ORDER BY, ASC/DESC, multiple column sorting


SELECT 
 *
FROM 
 services_weekly
WHERE 
 week IN (
 SELECT TOP 5
 week
 FROM 
 services_weekly
 GROUP BY 
 week
 ORDER BY 
 SUM(patients_refused) DESC
 )
ORDER BY 
 week,
 patients_refused DESC;


💡 What I Learned Today:

->How to use ORDER BY to sort results in ascending or descending order.
->The difference between TOP (SQL Server) and LIMIT (MySQL / PostgreSQL).
->How sorting can reveal key performance insights — like identifying weeks where patient refusals were highest.
->Importance of efficient sorting and indexing for performance.
->Data tells stories — and SQL is the language that helps uncover them 