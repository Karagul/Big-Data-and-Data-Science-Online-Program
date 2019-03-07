#Lesson 7 - Demo 2: Perform Regression Analysis with Multiple Variables

#port 1 - Cars Data: The buyers of cars are interested in determining the factors
#which influence car mileage in the city

#port 2 - Boston Data: Consists of variables to predict price of houses. A developer
#wants to know the factors which influence pricing of house

setwd('C:/Users/ckalib.nelson')
getwd()

cars_data <- read.csv('W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 7_Regression Analysis/Demo 2_ Perform Regression Analysis with multiple variables.csv')
View(cars_data)
summary(cars_data)
str(cars_data)

cars_results <- lm(formula = MPG_City ~ Type + Origin + DriveTrain + EngineSize + Cylinders + Horsepower + Weight + Wheelbase + Length, data = cars_data)

cars_results
summary(cars_results)

#-------------------
#boston Dataset

boston_data <- read.csv("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 7_Regression Analysis/bostoncsv/Boston.csv")
View(boston_data)
summary(boston_data)
str(boston_data)

boston_results <- lm(formula = medv ~ ., data = boston_data)
boston_results
summary(boston_results)
