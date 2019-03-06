#Lesson 9 - Demo 4: Cross Validation
#Bank is interested in knowing the factors which influrence the default of a customer
#Bank will utilize this ifnromation in future to avoid giving loans to the customers who are mor risky to the busienss

getwd()



#Load necessary packages
install.packages("caret")
library(plyr)
library(caret)

#Load and verify the bank data
bank_loan <- read.csv("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 8_Classification/Demo 2_ Naive Bayes Classifier.csv")
View(bank_loan)
str(bank_loan)

#Convert Default from into to factor
bank_loan$Default <- sapply(bank_loan$Default, factor)
str(bank_loan)

#build the model
tree_model <- rpart(Default ~ ., data = fodled_up, method = "class")
tree_model

#analyze results
printcp(tree_model)
plotcp(tree_model)
print(tree_model)
summary(tree_model)
plot(tree_model)

#k-fold cross validation
folded_up <- createFolds(bank_loan, k = 10, list = TRUE, returnTrain = FALSE)
train_set <- names(folded_up[1])
bank_loan[folded_up$train_set,]
