#Lesson 9 - Demo 1: Clustering Using K-Means
#Problem: Bank wants to launch 3 types of personal loan and would like to segment
#existing set of credit card customers into 3 groups to offer these products


getwd()

set.seed(111)
customer_data <- read.csv("W:/Ckalib.Nelson/Duke BDA Program/Electives/Data Science with R/Datasets/Datasets/Lesson 9_Clustering/Bank Customer Data.csv")
View(customer_data)
str(customer_data)

cluster_up <- kmeans(customer_data, 3, iter.max = 10)

#data cleaning
del_vars <- names(customer_data) %in% c("job", "marital", "education", "default","housing","loan","contact","month","poutcome")
customer_data_num <- customer_data[!del_vars]
customer_data_num <- na.omit(customer_data_num)
customer_data_num <- scale(customer_data_num)
View(customer_data_num)

#k-means clustering
cluster_up <- kmeans(customer_data_num, 3, iter.max = 10)
str(cluster_up)
customer_data_num <- cbind(customer_data_num, ClusterNum = cluster_up$cluster)
View(customer_data_num)

#graph and count of expected clusters
install.packages("mclust")
library(mclust)
fit <- Mclust(customer_data_num)
plot(fit)
