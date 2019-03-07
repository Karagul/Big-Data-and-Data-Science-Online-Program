#Lesson 8 - Demo 2: Naive Bayes
#Bank is interested in knowing the factors which influrence the default of a customer
#Bank will utilize this information in future to avoid giving loans to the customers who are more risky to the business


getwd()

#Load necessary packages
install.packages("e1071", "plyr","caret","mlbench")
library(e1071)
library(plyr)
library(caret)
library(mlbench)

#Load and verify the bank data
bank_loan <- read.csv("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 8_Classification/Demo 2_ Naive Bayes Classifier.csv")
View(bank_loan)
str(bank_loan)

#covnert Default from int to factor
bank_loan$Default <- sapply(bank_loan$Default, factor)
str(bank_loan)

#build the model
naive_model <- naiveBayes(Default ~., data=bank_loan)
print(naive_model)

#The model creates conditional probability for each feature seperately
#We also have the apriori probabilities which indicates the distribution of our data

#predict
naive_predict <- predict(naive_model, bank_loan)
naive_predict
table(naive_predict, bank_loan$Default)