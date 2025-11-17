#DAY 13
#PRACTICE
#1.Join patients and staff based on their common service field (show patient and staff who work in same service).
SELECT P.PATIENT_ID, P.NAME, P.SERVICE, 
       S.STAFF_ID, S.ROLE
FROM PATIENTS P 
INNER JOIN STAFF S 
ON P.SERVICE = S.SERVICE;

#2.Join services_weekly with staff to show weekly service data with staff information.
SELECT SW.SERVICE, SW.PATIENTS_REQUEST, SW.PATIENTS_ADMITTED, SW.PATIENTS_REFUSED,
	   S.STAFF_ID, S.ROLE, S.SERVICE
FROM SERVICES_WEEKLY SW
INNER JOIN STAFF S
ON SW.SERVICE = S.SERVICE;

#3.Create a report showing patient information along with staff assigned to their service.
SELECT P.PATIENT_ID, P.NAME, P.SERVICE, 
       S.STAFF_ID, S.ROLE
FROM PATIENTS P 
INNER JOIN STAFF S 
ON P.SERVICE = S.SERVICE;

#DAILY 
#Create a comprehensive report showing patient_id, patient name, age, service, and the total number of staff members available in their service. 
#Only include patients from services that have more than 5 staff members. Order by number of staff descending, then by patient name.
SELECT P.PATIENT_ID, P.NAME, P.AGE, P.SERVICE,
       COUNT(S.STAFF_ID) AS STAFF_COUNT
FROM PATIENTS P
INNER JOIN STAFF S
ON P.SERVICE = S.SERVICE
GROUP BY S.SERVICE, P.PATIENT_ID, P.NAME, P.AGE
HAVING COUNT(S.STAFF_ID) > 5
ORDER BY STAFF_COUNT DESC, P.NAME;