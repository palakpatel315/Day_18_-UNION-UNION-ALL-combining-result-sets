-- D_18_P_2. Create a union of high satisfaction patients (>90) and low satisfaction patients (<50).

SELECT patient_id, name, satisfaction, 'High Satisfaction' AS Category
FROM patients WHERE satisfaction >= 90
UNION SELECT patient_id, name, satisfaction, 'Low Satisfaction' AS Category 
FROM patients WHERE satisfaction < 50 ORDER BY satisfaction DESC;