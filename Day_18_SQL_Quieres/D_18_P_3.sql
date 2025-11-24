-- D_18_P_3. List all unique names from both patients and staff tables.

SELECT name AS Name FROM patients
UNION SELECT staff_name AS Name FROM staff
ORDER BY Name;