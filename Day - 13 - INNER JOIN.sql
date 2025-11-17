### Day 13 (17/11): INNER JOIN

**Topics:** INNER JOIN, joining two tables, relationship understanding


SELECT 
    p.patient_id,
    p.name,
    p.age,
    p.service,
    COUNT(s.staff_id) AS total_staff
FROM patients p
INNER JOIN staff s 
    ON p.service = s.service
GROUP BY 
    p.patient_id, 
    p.name, 
    p.age, 
    p.service
HAVING COUNT(s.staff_id) > 5
ORDER BY 
    total_staff DESC,
    p.name ASC;


 📘 What I Learned Today:
 ✅ How INNER JOIN connects two tables using a common key
 ✅ How GROUP BY + HAVING helps filter aggregated results
 ✅ How to sort data using multiple conditions
 ✅ Why relationships between tables are the backbone of relational databases
