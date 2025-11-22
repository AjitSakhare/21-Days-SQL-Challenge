### Day 17 (22/11): Subqueries (SELECT and FROM clause)

**Topics:** Subqueries in SELECT, derived tables, inline views

SELECT 
    sw.service,
    SUM(sw.patients_admitted) AS total_admitted,
    SUM(sw.patients_admitted) 
        - (SELECT AVG(total_admissions)
           FROM (
                SELECT SUM(patients_admitted) AS total_admissions
                FROM services_weekly
                GROUP BY service
           ) AS avg_table
        ) AS difference_from_average,

    CASE 
        WHEN SUM(sw.patients_admitted) >
            (SELECT AVG(total_admissions)
             FROM (
                SELECT SUM(patients_admitted) AS total_admissions
                FROM services_weekly
                GROUP BY service
             ) AS avg_table
            ) THEN 'Above Average'

        WHEN SUM(sw.patients_admitted) =
            (SELECT AVG(total_admissions)
             FROM (
                SELECT SUM(patients_admitted) AS total_admissions
                FROM services_weekly
                GROUP BY service
             ) AS avg_table
            ) THEN 'Average'

        ELSE 'Below Average'
    END AS rank_indicator

FROM services_weekly sw
GROUP BY sw.service
ORDER BY total_admitted DESC;


 📘 What I Learned Today
 ✅ How subqueries inside FROM create a “mini-table”
 ✅ How subqueries inside SELECT help compare values
 ✅ Why derived tables are powerful in reporting
 ✅ How to calculate averages and compare each service against it
 ✅ How to turn calculations into meaningful labels