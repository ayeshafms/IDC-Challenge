#DAY 18
#PRACTICE
#1.Combine patient names and staff names into a single list. 
SELECT PATIENT_ID, NAME FROM PATIENTS
UNION 
SELECT STAFF_ID, STAFF_NAME FROM STAFF;

#2.Create a union of high satisfaction patients (>90) and low satisfaction patients (<50).
SELECT PATIENT_ID, NAME FROM PATIENTS WHERE SATISFACTION > 90
UNION 
SELECT PATIENT_ID, NAME FROM PATIENTS WHERE SATISFACTION < 50;

#3.List all unique names from both patients and staff tables.
SELECT DISTINCT NAME FROM PATIENTS 
UNION
SELECT DISTINCT STAFF_NAME FROM STAFF;

#DAILY CHALLENGE
/*Create a comprehensive personnel and patient list showing: identifier (patient_id or staff_id), full name, type ('Patient' or 'Staff'), and associated service. 
Include only those in 'surgery' or 'emergency' services. Order by type, then service, then name.*/
SELECT *
FROM (SELECT PATIENT_ID AS IDENTIFIER, NAME AS FULL_NAME, "Patient" AS TYPE, SERVICE 
FROM PATIENTS
WHERE SERVICE = "SURGERY" OR SERVICE = "EMERGENCY"
UNION
SELECT STAFF_ID, STAFF_NAME, "Service" AS TYPE, SERVICE 
FROM STAFF
WHERE SERVICE = "SURGERY" OR SERVICE = "EMERGENCY") AS A
ORDER BY TYPE DESC, SERVICE DESC, FULL_NAME DESC;
