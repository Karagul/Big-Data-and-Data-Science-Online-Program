#Perform Assocation Using the Apriori Algorithm
#Scenario: A grocery store wants to establish a set of rules to identify the commodities that are bought in combination to determine position in shelves
getwd()
install.packages("arules")
library(arules)
Groceries_Item = read.transactions("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 10_Association/Demo 1_Perform Association Using the Apriori Algorithm .csv",sep = ",")
inspect(Groceries_Item[1:10])

AprioriForGroceries = apriori(Groceries_Item,parameter=list(support=.006,confidence=.5))
summary(AprioriForGroceries)                              
inspect(AprioriForGroceries)

AprioriForGroceries = apriori(Groceries_Item,parameter=list(support=.01,confidence=.5))
summary(AprioriForGroceries)
inspect(AprioriForGroceries)

inspect(sort(AprioriForGroceries, by="confidence"))
