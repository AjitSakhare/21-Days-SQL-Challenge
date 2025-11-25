### Day 18 (24/11): UNION and UNION ALL

**Topics:** UNION, UNION ALL, combining result sets

Create a combined list showing:
identifier (patient_id or staff_id)
full name
type (Patient / Staff)
service

Include only people from ‘surgery’ or ‘emergency’ services.
Order the result by:
type
service
name

SELECT 
p.patient_id AS identifier,p.name AS full_name, 'Patient' AS type,p.service as service
FROM patients p
WHERE p.service in ('surgery','emergency')
UNION
SELECT
s.staff_id AS identifier, s.staff_name AS full_name,'Staff' AS type,s.service AS service 
FROM staff s
WHERE s.service in ('surgery','emergency')
ORDER BY type,full_name

 📘 What I Learned Today
 ✅ How UNION combines rows from multiple tables
 ✅ Difference between UNION (removes duplicates) and UNION ALL (keeps all rows)
 ✅ Importance of matching column count and data types
 ✅ Why filters should be applied in each SELECT separately
 ✅ How to build clean, readable combined reports