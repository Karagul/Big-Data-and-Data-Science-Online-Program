#Analyze the Healthcare cost and Utiliztaion in Wisconsin hospitals
#Question: A nationwide survey of hospitals costs conducted by the US Agency of Healthcare consists of hospital records of inaptient samples. The given data is restricted to the city of Wisconsin and relates to patients in the age group of 0-17 years. The agency wants to analyze the data to research on the healthcare costs and their utilization
getwd()
healthcare_cost = read.csv("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Project/Project/Projects for Submission/Healthcare/Healthcare/HospitalCosts.csv")
View(healthcare_cost)
summary(healthcare_cost)
#AAGE: Age of patient discharged
#FEMALE: Binary variable that indicats if the patient is female
#LOS: Length of stay, in days
#RACE: Race of the patient (specified numerically)
#TOTCHG: Hospital discharge costs
#APRDRG: All Patient Refined Diagnosis Related Groups
str(healthcare_cost)

healthcare_cost_results <- lm(formula = TOTCHG ~ AGE + FEMALE + LOS + RACE + APRDRG, data = healthcare_cost)

healthcare_cost_results
summary(healthcare_cost_results)
