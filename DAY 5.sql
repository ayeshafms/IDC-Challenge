#DAY 5
#PRACTICE
#1.Count the total number of patients in the hospital.
SELECT 
      COUNT(PATIENT_ID) AS CNT
FROM PATIENTS;

#2.Calculate the average satisfaction score of all patients.
SELECT 
	  ROUND(AVG(SATISFACTION),2) AS AVG_SATISFACTION
FROM PATIENTS;

#3.Find the minimum and maximum age of patients.
SELECT 
      MIN(AGE) AS MIM_AGE,
      MAX(AGE) AS MAX_AGE
FROM PATIENTS;

#DAILY CHALLENGE
#Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks. 
#Round the average satisfaction to 2 decimal places.
SELECT 
       SUM(PATIENTS_ADMITTED) AS TOTAL_ADMITTED,
       SUM(PATIENTS_REFUSED) AS TOTAL_REFUSED,
       ROUND( AVG(PATIENT_SATISFACTION), 2 ) AS AVG_SATISFACTION
FROM SERVICES_WEEKLY;
	   