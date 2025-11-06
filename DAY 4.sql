#DAY 4
#PRACTICE
#1.Display the first 5 patients from the patients table.
SELECT * 
FROM PATIENTS
LIMIT 5;

#2.Show patients 11-20 using OFFSET.
SELECT * 
FROM PATIENTS
LIMIT 10 OFFSET 10; 

#3. Get the 10 most recent patient admissions based on arrival_date.
SELECT *
FROM PATIENTS
ORDER BY ARRIVAL_DATE DESC
LIMIT 10;

#DAILY CHALLENGE
#Find the 3rd to 7th highest patient satisfaction scores from the patients table, 
#showing patient_id, name, service, and satisfaction. Display only these 5 records.

SELECT PATIENT_ID, NAME, SERVICE, SATISFACTION
FROM PATIENTS
WHERE SATISFACTION IS NOT NULL        -- ignores patients with missing scores
ORDER BY SATISFACTION DESC, NAME ASC  -- highest satisfaction first, tie-break by name
LIMIT 5 OFFSET 2;                     -- skip top 2, shows 3rd to 7th