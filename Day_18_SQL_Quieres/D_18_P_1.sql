-- D_18_P_1. Combine patient names and staff names into a single list.

SELECT name AS Name, 'Patient' AS type, service
FROM patients
UNION ALL SELECT staff_name AS Name, 'Staff' AS type, service
FROM staff
ORDER BY service, type, Name;