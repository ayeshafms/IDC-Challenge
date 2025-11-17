#DAY 10
#PRACTICE
#1.Categorise patients as 'High', 'Medium', or 'Low' satisfaction based on their scores.
SELECT *, 
       CASE
           WHEN SATISFACTION BETWEEN 80 AND 100 THEN "HIGH"
           WHEN SATISFACTION BETWEEN 50 AND 79 THEN "MEDIUM"
           ELSE "LOW"
           END AS PATIENT_SATSISFACTION
FROM PATIENTS;

#2.Label staff roles as 'Medical' or 'Support' based on role type.
SELECT *,
       CASE 
          WHEN ROLE = "DOCTOR" OR ROLE="NURSE" THEN "MEDICAL"
          WHEN ROLE= "NURSING_ASSISTANT" THEN "SUPPORT"
          END AS SAFFROLE_LABEL
FROM STAFF;

#3.Create age groups for patients (0-18, 19-40, 41-65, 65+).
SELECT *,
       CASE
          WHEN AGE > 65 THEN "SENIOR CITIZEN"
          WHEN AGE BETWEEN 41 AND 65 THEN "ADULT"
          WHEN AGE BETWEEN 19 AND 40 THEN "YOUNG ADULT"
          ELSE "MINORS"
          END AS AGE_GROUPS
FROM PATIENTS;

#DAILY CHALLENGE
# Create a service performance report showing service name, total patients admitted, and a performance category based on the following:
#'Excellent' if avg satisfaction >= 85, 'Good' if >= 75, 'Fair' if >= 65, otherwise 'Needs Improvement'. Order by average satisfaction descending.
SELECT SERVICE, 
       SUM(PATIENTS_ADMITTED) AS TOTAL_PATIENTS,
       ROUND(AVG(PATIENT_SATISFACTION),2) AS AVG_SATISFACTION,
       CASE 
       WHEN AVG(PATIENT_SATISFACTION) >=85 THEN "EXCELLENT"
       WHEN AVG(PATIENT_SATISFACTION) >=75 THEN "GOOD"
       WHEN AVG(PATIENT_SATISFACTION) >=65 THEN "FAIR"
       ELSE "NEEDS IMPROVEMENT"
       END AS PERFORMANCE_CATEGORY
FROM SERVICES_WEEKLY
GROUP BY SERVICE 
ORDER BY AVG_SATISFACTION DESC;