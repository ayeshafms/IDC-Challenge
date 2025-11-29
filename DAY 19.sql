#DAY 19
#PRACTICE
#1.Rank patients by satisfaction score within each service.
SELECT NAME, SERVICE, 
       ROW_NUMBER () OVER(PARTITION BY SERVICE ORDER BY SATISFACTION DESC) AS SATISFACTION_RANK
FROM PATIENTS;

#2.Assign row numbers to staff ordered by their name.
SELECT STAFF_NAME,
	   ROW_NUMBER() OVER(ORDER BY STAFF_NAME ASC) AS STAFF_RANK
FROM STAFF;

#3.Rank services by total patients admitted.
SELECT SERVICE,
       PATIENTS_ADMITTED,
       DENSE_RANK() OVER (PARTITION BY SERVICE ORDER BY PATIENTS_ADMITTED DESC) AS SERVICE_RANK
FROM SERVICES_WEEKLY;

#DAILY CHALLENGE
/*For each service, rank the weeks by patient satisfaction score (highest first). Show service, week, patient_satisfaction, patients_admitted, and the rank. 
Include only the top 3 weeks per service.*/
SELECT * 
FROM (SELECT SERVICE,
       WEEK,
       PATIENT_SATISFACTION,
       PATIENTS_ADMITTED,
       RANK() OVER(PARTITION BY SERVICE ORDER BY PATIENT_SATISFACTION DESC) AS SAT_RANK
	   FROM SERVICES_WEEKLY) AS A
WHERE SAT_RANK<=3
ORDER BY SAT_RANK;
