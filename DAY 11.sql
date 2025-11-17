#DAY 11
#PRACTICE
#1.List all unique services in the patients table.
SELECT DISTINCT(SERVICE)
FROM PATIENTS;

#2.Find all unique staff roles in the hospital.
SELECT DISTINCT(ROLE)
FROM STAFF;

#3.Get distinct months from the services_weekly table.
SELECT DISTINCT(MONTH)
FROM SERVICES_WEEKLY;

#DAILY CHALLENGE
# Find all unique combinations of service and event type from the services_weekly table where events are not null or none, 
#along with the count of occurrences for each combination. Order by count descending.
SELECT SERVICE,
       EVENT,
       COUNT(*) AS CNT
FROM SERVICES_WEEKLY
WHERE EVENT IS NOT NULL 
	  AND EVENT != 'NONE'
GROUP BY SERVICE, EVENT
ORDER BY CNT DESC;



