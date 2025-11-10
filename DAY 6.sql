
# For each hospital service, calculate the total number of patients admitted, total patients refused, 
#and the admission rate (percentage of requests that were admitted). Order by admission rate descending.
SELECT SERVICE,
       SUM(PATIENTS_ADMITTED) AS TOTAL_ADMITTED,
       SUM(PATIENTS_REFUSED) AS TOTAL_REFUSED,
       ROUND( SUM(PATIENTS_ADMITTED)/ SUM(PATIENTS_REQUEST) * 100 , 2)
       AS ADMISSION_RATE
FROM SERVICES_WEEKLY
GROUP BY SERVICE
ORDER BY ADMISSION_RATE DESC;