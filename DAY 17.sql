#DAY 17
#PRACTICE
#1.Show each patient with their service's average satisfaction as an additional column. 
SELECT P.PATIENT_ID, P.NAME,
       P.SERVICE,
       (SELECT ROUND(AVG(SATISFACTION),2) 
        FROM PATIENTS P2
        WHERE P2.SERVICE = P.SERVICE) AS AVG_SATISFACTION
FROM PATIENTS P 
LIMIT 5;

#2.Create a derived table of service statistics and query from it.
SELECT UPPER (S.SERVICE) AS SERVICE,
       S.TOTAL_ADMITTED,
       S.TOTAL_rEFUSED,
       S.TOTAL_REQUEST,
       S.AVG_SATISFACTION
FROM(SELECT SERVICE,
     SUM(PATIENTS_ADMITTED) AS TOTAL_ADMITTED,
     SUM(PATIENTS_REFUSED) AS TOTAL_rEFUSED,
     SUM(PATIENTS_REQUEST) AS TOTAL_REQUEST,
     ROUND(AVG(PATIENT_SATISFACTION),2) AS AVG_SATISFACTION
     FROM SERVICES_wEEKLY
     GROUP BY SERVICE) AS S;

#3.Display staff with their service's total patient count as a calculated field. 
SELECT S.STAFF_ID,
       S.ROLE,
       S.STAFF_NAME,
       S.SERVICE,
       (SELECT COUNT(*) FROM PATIENTS P
       WHERE P.SERVICE = S.SERVICE)
FROM STAFF S;

#DAILY CHALLENGE
#Create a report showing each service with: service name, total patients admitted, the difference between their total admissions and the average admissions across all services, and a rank indicator 
#('Above Average', 'Average', 'Below Average'). Order by total patients admitted descending.
SELECT SERVICE,
       SUM(PATIENTS_ADMITTED) AS TOTAL_ADMISSIONS,
       SUM(PATIENTS_ADMITTED) - (SELECT AVG(TOTAL_ADMISSIONS)
                                 FROM (SELECT SERVICE,
								 SUM(PATIENTS_ADMITTED) AS TOTAL_ADMISSIONS
								 FROM SERVICES_WEEKLY
								 GROUP BY SERVICE) AS A) AS DIFF,
	  CASE WHEN (SELECT AVG(TOTAL_ADMISSIONS)
                                 FROM (SELECT SERVICE,
								 SUM(PATIENTS_ADMITTED) AS TOTAL_ADMISSIONS
								 FROM SERVICES_WEEKLY
								 GROUP BY SERVICE) AS A) < SUM(PATIENTS_ADMITTED) THEN "ABOVE AVERAGE" 
            WHEN (SELECT AVG(TOTAL_ADMISSIONS)
                                 FROM (SELECT SERVICE,
								 SUM(PATIENTS_ADMITTED) AS TOTAL_ADMISSIONS
								 FROM SERVICES_WEEKLY
								 GROUP BY SERVICE) AS A) > SUM(PATIENTS_ADMITTED) THEN "ABOVE AVERAGE"        
           ELSE "AVERAGE"
           END AS RANK_INDICATOR
FROM SERVICES_WEEKLY SW
GROUP BY SERVICE
ORDER BY TOTAL_ADMISSIONS DESC