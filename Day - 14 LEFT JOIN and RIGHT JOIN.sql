### Day 14 (18/11): LEFT JOIN and RIGHT JOIN

**Topics:** LEFT JOIN, RIGHT JOIN, including unmatched records

SELECT 
    s.staff_id,
    s.staff_name,
    s.role,
    s.service,
    COUNT(ss.week) AS weeks_scheduled,
    SUM(CASE WHEN ss.present = 1 THEN 1 ELSE 0 END) AS weeks_present
FROM staff s
LEFT JOIN staff_schedule ss 
    ON s.staff_id = ss.staff_id
GROUP BY 
    s.staff_id,
    s.staff_name,
    s.role,
    s.service
ORDER BY 
    weeks_present DESC;


📘 What I Learned Today:

✅ LEFT JOIN → keeps all records from the left table, even if there is no match.
✅ RIGHT JOIN → keeps all records from the right table.
✅ Useful for audit reports, HR attendance dashboards, and any scenario where missing data still matters.
✅ Real data analysis is not just about what exists — it’s also about what’s missing.