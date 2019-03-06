#Lesson 8 - Demo 3: Decision Trees
#Bank is interested in knowing the factors which influence the default of a customer.
#Bank will utilize this information in fuure to avoid giving loans to the customers who are more risky to the business


getwd()

#Load necessary packages
install.packages("rpart")
library(plyr)
library(rpart)




#Load and very the bank data
bank_loan <- read.csv("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 8_Classification/Demo 2_ Naive Bayes Classifier.csv")
View(bank_loan)
str(bank_loan)

#convert Default from int to factor
bank_loan$Default <- sapply(bank_loan$Default, factor)
str(bank_loan)

#build the model
tree_model <- rpart(Default~ ., data = bank_loan, method = "class")
tree_model

#analyze results
printcp(tree_model)
plotcp(tree_model)
print(tree_model)
summary(tree_model)
plot(tree_model)
