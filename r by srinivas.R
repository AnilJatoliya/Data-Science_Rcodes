1+1
2+3*4
3^2
exp(1)
sqrt(9)
pi
2*pi*6398
x=c(2,0,0,4)
y=c(1,9,9,9)
x+y
x*y
sqrt(x)
x[2]
x[-1]
x[1]=5
x
x[-1]=5
x
y<9
y[4]=1
y<9
y[y<9]=2  #edits elements marked as true in index vector
y
df=data.frame(x=1:3,y=c("a","b","c"));df
df[1,1];df[1,2]
df[1,c(1,2)]
df[c(1,3),2]
df[c(1,3),1]
df[c(1,3),c(1,2)]



##### Visualization technique #####
#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")

AQ = datasets::airquality
## Top 10 rows and last 10 rows
head(AQ,10)
tail(AQ,10)

##### Columns
AQ[,c(1,2)]

Df = AQ[,-6]

AQ$Temp

summary(AQ$Ozone)


##### Summary of the Data #####
summary(AQ)
summary(AQ$Wind)



#############################
plot(AQ$Wind)
plot(AQ$Temp,AQ$Wind,type = "p")
plot(AQ)


#### points and lines
plot(AQ$Wind, type = "l")

plot(AQ$Wind, xlab = "Ozone concentration", ylab = "No of instances", main = "Ozone levels in NY city", col = "blue")


##### Horizontal bar plot
barplot(AQ$Ozone, main = "Ozone concentration in air", ylab = "Ozone levels", col = "blue", horiz = F, axes = T)


######## Histogram
hist(AQ$Temp)
hist(AQ$Temp, main = "Solar radiation values in air", xlab = "Solar red", col = "blue")


###single boxplot
boxplot(AQ$Wind, main ="boxplot")
boxplot.stats(AQ$Wind)$out

###Multiple boxplots
boxplot(AQ[,1:4], main = "Multiple")



#margin of the grid(mar)
#no of rows and columns(mfrow)
#whether a border is to be included(bty)
#and position of the
#lables(las=1 for horizontal las=0 for vertical)
#bty box around the plot

par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty = "o")

plot(AQ$Ozone)
plot(AQ$Ozone,AQ$Wind)
plot(AQ$Ozone,type = "l")
plot(AQ$Ozone,type = "l")
plot(AQ$Ozone,type = "l")
barplot(AQ$Ozone, main = "Ozone concentration in air",xlab = "Ozone levels",col = "green",horiz = TRUE)

hist(AQ$Solar.R)
boxplot(AQ$Solar.R)
boxplot(AQ[,1:4], main = "Multiple box plots")
