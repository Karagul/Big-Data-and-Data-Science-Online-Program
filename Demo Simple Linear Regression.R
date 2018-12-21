#Lesson 7 - Demo 1: Perform Simple Linear Regression

#Given the class dataset with 5 variables,
#i.e., name, sex,age, height, and weight representing the information for a class of students,
#predict the weight based on height.

setwd('C:/Users/ckalib.nelson')
getwd()
Class <- read.csv('W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 7_Regression Analysis/Demo 1_Perform simple linear regression.csv')

View(Class)
str(Class)
summary(Class)


results <- lm(formula = Weight ~ Height, data = Class)
results

results1 <- lm(formula = Class$Weight ~ Class$Height)
results1

summary(results)