-- D_18_Challenge_Question: Create a comprehensive personnel and patient list showing: identifier (patient_id or staff_id), 
-- full name, type ('Patient' or 'Staff'), and associated service. Include only those in 'surgery' or 'emergency' services. 
-- Order by type, then service, then name.

SELECT p.patient_id AS Identifier, p.name AS Name, 'Patient' AS type, p.service
FROM patients p
WHERE p.service IN ('surgery', 'emergency')
UNION ALL
SELECT s.staff_id AS Identifier, s.staff_name AS Name, 'Staff' AS type, s.service
FROM staff s
WHERE s.service IN ('surgery', 'emergency')
ORDER BY type, service, Name;