### Day 2 (04/11): Filtering Data with WHERE Clause

**Topics:** WHERE clause, comparison operators, basic filtering


SELECT 
 patient_id,
 name,
 age,
 satisfaction
FROM patients
WHERE service = 'Surgery' AND satisfaction < 70;

💡 Key Takeaways from Today:
-> Learned WHERE clause to filter records based on multiple conditions.
-> Applied logical operators (AND / OR) to refine data queries.
-> Selected only the most relevant columns instead of using SELECT *.
-> Discovered how a few lines of SQL can spotlight patients needing extra attention or follow-up — a true example of data-driven healthcare insights!