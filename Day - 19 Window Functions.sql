### Day 19 (25/11): Window Functions - ROW_NUMBER, RANK, DENSE_RANK

**Topics:** ROW_NUMBER(), RANK(), DENSE_RANK(), OVER clause

Question: For each service, rank the weeks by patient satisfaction score (highest first).
 Show service, week, patient_satisfaction, patients_admitted, and the rank. Include only the top 3 weeks per service.
 
Select * from (
select service, week,patient_satisfaction,patients_admitted,
RANK() over (partition by service order by patient_satisfaction desc) as satisfaction_rank
from services_weekly)
as ranked_data 
WHERE satisfaction_rank <= 3
ORDER BY service, satisfaction_rank;

📘 What I Learned Today
✅ ROW_NUMBER()
Gives a unique number (1,2,3…) even when scores are the same.
 Great for picking the first row, the last row, etc.
✅ RANK()
Same scores → same rank
 But next rank jumps (1,1,3)
 Perfect for leaderboards.
✅ DENSE_RANK()
Same scores → same rank
 But no jumps (1,1,2)
 Useful in reporting when you don't want gaps.
✅ OVER() Clause
Tells SQL how to calculate the window:
PARTITION BY = group
ORDER BY = ranking order