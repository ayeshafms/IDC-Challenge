#DAY 3
#PRACTICE
#1.List all patients sorted by age in descending order.
SELECT * 
fROM PATIENTS
ORDER BY AGE DESC;

#2.Show all services_weekly data sorted by week number ascending and patients_request descending.
SELECT * 
FROM SERVICES_WEEKLY
ORDER BY WEEK ASC, PATIENTS_REQUEST DESC;

#3.Display staff members sorted alphabetically by their names
SELECT * 
FROM STAFF 
ORDER BY STAFF_NAME ASC;

#DAILY CHALLENGE
#Retrieve the top 5 weeks with the highest patient refusals across all services, 
#showing week, service, patients_refused, and patients_request. Sort by patients_refused in descending order.

SELECT WEEK, SERVICE, PATIENTS_REFUSED, PATIENTS_REQUEST
FROM SERVICES_WEEKLY
ORDER BY PATIENTS_REFUSED DESC
LIMIT 5;