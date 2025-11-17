#DAY 12
#PRACTICE
#1.Find all weeks in services_weekly where no special event occurred.
SELECT WEEK, SERVICE, EVENT
FROM SERVICES_WEEKLY
WHERE EVENT = "NONE";

#2.Count how many records have null or empty event values.

#3.List all services that had at least one week with a special event. 
SELECT SERVICE,
       COUNT(WEEK) AS CNT
FROM SERVICES_WEEKLY
WHERE SERVICE IS NOT NULL
GROUP BY SERVICE;

#DAILY CHALLENGE
#Analyze the event impact by comparing weeks with events vs weeks without events. Show: event status ('With Event' or 'No Event'),
#count of weeks, average patient satisfaction, and average staff morale. Order by average patient satisfaction descending.
SELECT CASE
		WHEN EVENT IS NOT NULL
               AND EVENT != "NONE" 
		  THEN "With Event"
		ELSE "No Event"
        END AS "EVENT_STATUS",
        
	   COUNT(WEEK) AS WEEK_CNT,
       ROUND(AVG(PATIENT_SATISFACTION),2) AS AVG_SATISFACTION,
       ROUND(AVG(STAFF_MORALE),2) AS AVG_STAFFMORALE

FROM SERVICES_WEEKLY

GROUP BY CASE
		WHEN EVENT IS NOT NULL
               AND EVENT != "NONE" 
		  THEN "With Event"
		ELSE "No Event"
        END 
        
ORDER BY AVG_SATISFACTION DESC;



SELECT DISTINCT(EVENT) FROM SERVICES_WEEKLY;