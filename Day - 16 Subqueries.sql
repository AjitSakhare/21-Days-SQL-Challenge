### Day 16 (21/11): Subqueries (WHERE clause)

**Topics:** Subqueries in WHERE, nested queries, filtering with subqueries


SELECT 
    p.patient_id,
    p.name,
    p.service,
    p.satisfaction
FROM patients p
WHERE 
    p.service IN (
        SELECT DISTINCT sw.service
        FROM services_weekly sw
        WHERE sw.patients_refused > 0
    )
    
    AND
    
    p.service IN (
        SELECT sw.service
        FROM services_weekly sw
        GROUP BY sw.service
        HAVING AVG(sw.patient_satisfaction) < (
            SELECT AVG(patient_satisfaction)
            FROM services_weekly
        )
    );
	
 📘 What I Learned Today:
 ✅ How to use subqueries inside WHERE
 ✅ How to compare service-level averages with global averages
 ✅ How to check existence of specific conditions (refusals)
 ✅ How SQL helps find hidden patterns by combining multiple conditions
 ✅ Subqueries make filtering smarter and more powerful