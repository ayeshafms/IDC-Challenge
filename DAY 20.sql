#DAY 20
#PRACTICE
#1.Calculate running total of patients admitted by week for each service. 
SELECT WEEK,
       SERVICE,
       PATIENTS_ADMITTED,
       SUM(PATIENTS_ADMITTED) OVER(PARTITION BY SERVICE ORDER BY WEEK) AS RUMMING_TOTAL
FROM SERVICES_WEEKLY;

#2.Find the moving average of patient satisfaction over 4-week periods.
SELECT SERVICE,
	   WEEK,
       PATIENT_SATISFACTION,
       ROUND(AVG(PATIENT_SATISFACTION) 
       OVER(PARTITION BY SERVICE
       ORDER BY WEEK 
       ROWS BETWEEN 3 PRECEDING AND CURRENT ROW),2) AS MOVING_AVG
FROM SERVICES_WEEKLY;

#3.Show cumulative patient refusals by week across all services.
SELECT SERVICE,
       WEEK,
       PATIENTS_REFUSED,
       SUM(PATIENTS_REFUSED) OVER(ORDER BY SERVICE, WEEK) AS CUMULATIVE_TOTAL
FROM SERVICES_WEEKLY;

#DAILY CHALLENGE
/*  Create a trend analysis showing for each service and week: week number, patients_admitted, running total of patients admitted (cumulative), 
3-week moving average of patient satisfaction (current week and 2 prior weeks), and the difference between current week admissions and the service average. 
Filter for weeks 10-20 only. */
SELECT SERVICE,
       WEEK,
       PATIENTS_aDMITTED,
       PATIENT_SATISFACTION,
       SUM(PATIENTS_ADMITTED) OVER(ORDER BY SERVICE, WEEK) AS RUNNING_TOTAL,
       ROUND(AVG(PATIENT_SATISFACTION) OVER(PARTITION BY SERVICE ORDER BY WEEK ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ),2) AS MOVING_AVG,
       ROUND(PATIENTS_ADMITTED - AVG(PATIENTS_ADMITTED) OVER(PARTITION BY SERVICE),2) AS DIFF
FROM SERVICES_WEEKLY
WHERE WEEK BETWEEN 10 AND 20;