#DAY 2
#PRACTICE

#1. Find all patients who are older than 60 years.
SELECT PATIENT_ID, NAME, AGE
FROM PATIENTS
WHERE AGE>60 ;

#2.Retrieve all staff members who work in the 'Emergency' service.
SELECT *
FROM staff
WHERE SERVICE = "EMERGENCY";

#3.List all weeks where more than 100 patients requested admission in any service.
SELECT WEEK, MONTH, SERVICE, PATIENTS_REQUEST
FROM SERVICES_WEEKLY
WHERE PATIENTS_REQUEST > 100
ORDER BY WEEK;

#DAILY CHALLENGE
#Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.

SELECT PATIENT_ID, NAME, AGE, SATISFACTION
FROM PATIENTS
WHERE SERVICE = "SURGERY"
AND SATISFACTION < 70
ORDER BY SATISFACTION DESC;
