setwd("D:/Academic Operations/SMDM or FBS")
getwd()
mydata=read.csv('CardioGoodFitness.csv',header = TRUE)
View(mydata)
attach(mydata)
library(psych)
by(mydata,INDICES=Gender,FUN=summary)#getting the sumamry of the data set with respect to Male and Female
t.test(Miles~Gender,var.equal=TRUE)#here we are taking the t-test with respect to Male and Female and because Male
#and Female are in a single column
T=table(Product,Gender) #making a table of treadmill with respect to the two Genders
#Now we have to check whether there is any association between the usage of the Product and Gender
#Here, the Null Hypothesis is that the Product and Gender are independent and the Alternative Hypothesis is that
#they are not independent
chisq.test(T)
#The Null Hypothesis is rejected as the p-value is less than alpha(5%). Hence Product and Gender are dependent.
