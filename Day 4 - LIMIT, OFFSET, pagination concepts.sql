### Day 4 (06/11): LIMIT and OFFSET

**Topics:** LIMIT, OFFSET, pagination concepts

SELECT 
 patient_id, 
 name, 
 service, 
 satisfaction
FROM 
 patients
ORDER BY 
 satisfaction DESC
OFFSET 2 ROWS
FETCH NEXT 5 ROWS ONLY;

💡 What I Learned Today:
→ How to use ORDER BY with OFFSET and FETCH NEXT to retrieve specific row ranges.
 → The difference between LIMIT/OFFSET (used in MySQL) and OFFSET/FETCH (used in SQL Server).
 → How pagination helps when dealing with large datasets — perfect for dashboards, reports, or ranked results.
 → A glimpse into how analysts control query performance and data readability.