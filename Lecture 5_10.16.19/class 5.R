#Lecture 5 Data visualization

x <- rnorm(1000)

#how many things are in x
length(x)

#is x a vector
is.vector(x)

mean(x)
sd(x)

summary(x)

boxplot(x)
hist(x)
rug(x)

hist(x, breaks = 3)

#section 2
getwd()
read.table(file="bimm143_05_rstats/weight_chart.txt")
read.table(file = "bimm143_05_rstats/weight_chart.txt", header = TRUE)

weight <- read.table(file="bimm143_05_rstats/weight_chart.txt", header = TRUE)
plot(weight$Age, weight$Weight, type = "o", pch = 15, cex = 1.5, lwd = 2, ylim = c(2,10), ylab = "weight (kg)", xlab = "age (months)", main = "baby weight with age")

#section 2b

getwd
read.table(file = "bimm143_05_rstats/feature_counts.txt", header = TRUE, sep="\t")
#read.delim has certain set parameters
read.delim(file = "bimm143_05_rstats/feature_counts.txt")

mouse <- read.delim(file = "bimm143_05_rstats/feature_counts.txt")

barplot(mouse$Count, horiz=TRUE, names.arg = mouse$Feature, las = 1, main = "Number of features in the mouse GRCm38 genome")
par(mar = c(4,11,4,2))
#for margins:
#order from 1 to 4 is bottom, left, top, right

# section 3
x <- c(rnorm(1000), rnorm(1000)+4)
hist(x, breaks = 80)
par(mar = c(4,4,4,4))

# section 3A

