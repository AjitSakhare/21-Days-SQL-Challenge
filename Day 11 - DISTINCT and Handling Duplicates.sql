### Day 11 (14/11): DISTINCT and Handling Duplicates

**Topics:** DISTINCT, removing duplicates, unique values

### Daily Challenge:

**Question:** Find all unique combinations of service and event type from the services_weekly table where events are not null or none, 
along with the count of occurrences for each combination. Order by count descending.


SELECT 
 service, 
 event, 
 COUNT(*) AS occurrence_count
FROM services_weekly
WHERE event IS NOT NULL 
 AND event <> 'none'
GROUP BY service, event
ORDER BY occurrence_count DESC;


 📘 What I Learned Today:
 ✅ How to use DISTINCT and GROUP BY to find unique records.
 ✅ Why cleaning null or placeholder values (like 'none') is crucial.
 ✅ Real-world analytics starts with clean and well-grouped data.
