#DAY 16
#PRACTICE
#1.Find patients who are in services with above-average staff count.
SELECT P.PATIENT_ID, P.NAME, P.AGE, C.SERVICE
FROM PATIENTS P 
JOIN (SELECT SERVICE, COUNT(*) AS CNT
	  FROM STAFF 
      GROUP BY SERVICE) AS C
ON P.SERVICE = C.SERVICE
WHERE CNT >(
SELECT AVG(CNT)
FROM (SELECT COUNT(*) AS CNT,
       SERVICE 
      FROM STAFF
	  GROUP BY SERVICE) AS A);
      
#2.List staff who work in services that had any week with patient satisfaction below 70.
SELECT S.STAFF_ID, S.STAFF_NAME, S.ROLE, S.SERVICE 
FROM STAFF S 
WHERE S.SERVICE IN  (
SELECT DISTINCT SERVICE
FROM SERVICES_WEEKLY
WHERE PATIENT_SATISFACTION < 70);

#3.Show patients from services where total admitted patients exceed 1000.
SELECT PATIENT_ID, NAME, SERVICE 
FROM PATIENTS 
WHERE SERVICE IN (
SELECT SERVICE
FROM SERVICES_WEEKLY 
GROUP BY SERVICE
HAVING SUM(PATIENTS_ADMITTED)  > 1000);

#DAILY CHALLENGE
#Find all patients who were admitted to services that had at least one week where patients were refused AND the average patient satisfaction 
#for that service was below the overall hospital average satisfaction. Show patient_id, name, service, and their personal satisfaction score.
SELECT PATIENT_ID, NAME, AGE, SERVICE
FROM PATIENTS
WHERE SERVICE IN 
(SELECT SERVICE
FROM SERVICES_WEEKLY 
WHERE PATIENTS_REFUSED > 0
GROUP BY SERVICE
HAVING  ROUND(AVG(PATIENT_SATISFACTION),2) <
(SELECT AVG(PATIENT_SATISFACTION) FROM SERVICES_WEEKLY));