
--  View data preview
-- SELECT TOP 100 * FROM HealthcareData;


--- Removing potential duplicates based on Patient ID and Admission Date

WITH Ranked AS (
    SELECT *, 
           ROW_NUMBER() OVER(PARTITION BY [Patient_ID], [Date_of_Admission] ORDER BY [Billing_Amount] DESC) AS rn
    FROM HealthcareData
)
DELETE FROM Ranked WHERE rn > 1;


-- -- Add Length of Stay column

ALTER TABLE HealthcareData ADD LengthOfStay INT;

UPDATE HealthcareData
SET LengthOfStay = DATEDIFF(DAY, [Date_of_Admission], [Discharge_Date]);

--- EDA OF HEALTHCARE DATASET

-- Medical condition and total patients

SELECT [Medical_Condition], COUNT(*) AS TotalPatients
FROM HealthcareData
GROUP BY [Medical_Condition];

-- Medical condition per gender
SELECT [Medical_Condition], [Gender], COUNT(*) AS PatientCount
FROM HealthcareData
GROUP BY [Medical_Condition], [Gender];

---- Medical condition per medication
SELECT [Medical_Condition], [Medication], COUNT(*) AS PatientCount
FROM HealthcareData
GROUP BY [Medical_Condition], [Medication];

-- -- Total patients by medication
SELECT [Medication], COUNT(DISTINCT [Patient_ID]) AS TotalPatients
FROM HealthcareData
GROUP BY [Medication];

-- Top 5 doctors and total patients, with hospital
SELECT TOP 5 [Doctor], [Hospital], COUNT(*) AS TotalPatients
FROM HealthcareData
GROUP BY [Doctor], [Hospital]
ORDER BY TotalPatients DESC;

-- Bottom 5 doctors
SELECT TOP 5 [Doctor], [Hospital], COUNT(*) AS TotalPatients
FROM HealthcareData
GROUP BY [Doctor], [Hospital]
ORDER BY TotalPatients ASC;


-- Billing over time
SELECT FORMAT([Date_of_Admission], 'yyyy-MM') AS Month, 
       ROUND(SUM([Billing_Amount]), 0) AS TotalBilling
FROM HealthcareData
GROUP BY FORMAT([Date_of_Admission], 'yyyy-MM')
ORDER BY Month;

-- Billing per insurance
SELECT [Insurance_Provider],  ROUND(SUM([Billing_Amount]), 0) AS TotalBilling
FROM HealthcareData
GROUP BY [Insurance_Provider];

-- Admission type use
SELECT [Admission_Type], COUNT(*) AS PatientCount
FROM HealthcareData
GROUP BY [Admission_Type];

-- Patients by hospital
SELECT [Hospital], COUNT(DISTINCT [Patient_ID]) AS TotalPatients
FROM HealthcareData
GROUP BY [Hospital];

-- Age distribution
SELECT 
  CASE 
    WHEN Age BETWEEN 0 AND 20 THEN '0–20'
    WHEN Age BETWEEN 21 AND 40 THEN '21–40'
    WHEN Age BETWEEN 41 AND 60 THEN '41–60'
    WHEN Age BETWEEN 61 AND 80 THEN '61–80'
    ELSE '81+' 
  END AS AgeGroup,
  COUNT(*) AS TotalPatients
FROM HealthcareData
GROUP BY 
  CASE 
    WHEN Age BETWEEN 0 AND 20 THEN '0–20'
    WHEN Age BETWEEN 21 AND 40 THEN '21–40'
    WHEN Age BETWEEN 41 AND 60 THEN '41–60'
    WHEN Age BETWEEN 61 AND 80 THEN '61–80'
    ELSE '81+' 
  END;


---- load cleam data imtp powerBI

SELECT 
    [Patient_ID],
    [Age],
    [Gender],
    [Blood_Type],
    [Medical_Condition],
    [Date_of_Admission],
    [Discharge_Date],
    DATEDIFF(DAY, [Date_of_Admission], [Discharge_Date]) AS LengthOfStay,
    [Doctor],
    [Hospital],
    [Insurance_Provider],
    [Billing_Amount],
    [Room_Number],
    [Admission_Type],
    [Medication],
    [Test_Results],
    [Hospital_Latitude],
    [Hospital_Longitude]
FROM HealthcareData;
