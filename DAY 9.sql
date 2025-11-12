#DAY 9
#PRACTICE 
#1.Extract the year from all patient arrival dates.
SELECT ARRIVAL_DATE,
       YEAR(ARRIVAL_DATE) AS YEAR
FROM PATIENTS;

#2.Calculate the length of stay for each patient (departure_date - arrival_date).
SELECT PATIENT_ID,
       ARRIVAL_DATE, 
	   DEPARTURE_DATE,
       DATEDIFF(DEPARTURE_DATE, ARRIVAL_DATE) AS PATIENT_STAY
FROM PATIENTS
ORDER BY PATIENT_STAY DESC;

#3.Find all patients who arrived in a specific month.
SELECT PATIENT_ID,
       NAME,
       MONTH(ARRIVAL_DATE) AS ARRIVAL_MONTHNO,
       MONTHNAME(ARRIVAL_DATE) AS ARRIVAL_MONTHNAME
FROM PATIENTS 
ORDER BY ARRIVAL_MONTHNO;

#DAILY CHALLENGE
#Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days.
#Also show the count of patients and order by average stay descending.
SELECT SERVICE,
	   ROUND( AVG(DATEDIFF(DEPARTURE_DATE, ARRIVAL_DATE)), 2 ) AS AVG_STAY,
       COUNT(*) AS PATIENT_COUNT
FROM PATIENTS
GROUP BY SERVICE 
HAVING AVG(DATEDIFF(DEPARTURE_DATE, ARRIVAL_DATE)) > 7
ORDER BY AVG_STAY DESC;

