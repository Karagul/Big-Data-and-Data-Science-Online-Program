#Lesson 9 - Demo 2: Clustering Using Hierarchcial Clustering
#Problem: Bank wants to launch 3 types of personal loan and would like to segment
#Existing set of credit card custoemrs into 3 groups to offer these products


getwd()
set.seed(111)

customer_data <- read.csv("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 9_Clustering/Bank Customer Data.csv")
View(customer_data)
str(customer_data)

#data cleaning
customer_data <- na.omit(customer_data)

#Hierarchical Clustering
cluster_h <- dist(customer_data, method = "euclidian")
fit<- hclust(cluster_h, method = 'ward')
groups <- cutree(fit, k = 3)
groups
customer_data <- cbind(customer_data, ClusterNum = groups)
View(customer_data)

#graph
plot(fit)
