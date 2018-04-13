usda <- read.csv('USDA.csv')

str(usda)

library(ggplot2)

summary(usda)

names(usda)

usda$Description[which.max(usda$Sodium)]

HighSodium <- subset(usda, Sodium>10000)

nrow(HighSodium)

HighSodium

match('CAVIAR', usda$Description)

usda$Sodium[4154]

usda$Sodium[match('CAVIAR', usda$Description)]

summary(usda$Sodium)

sd(usda$Sodium, na.rm = TRUE)

plot(usda$Protein, usda$TotalFat, xlab = 'Protein', ylab = 'Fat', main = 'Protein vs Fat', col = 'red')

hist(usda$VitaminC, xlab = 'Vitamin C', main = 'Histogram of Vitamin C Levels', xlim = c(0, 100), breaks = 2000)

boxplot(usda$Sugar, main = 'Boxplot of Sugar Levels', ylab = 'Sugar (g)')

usda$Sodium[1] > mean(usda$Sodium, na.rm = TRUE)

usda$Sodium[50] > mean(usda$Sodium, na.rm = TRUE)

HighSodium = as.numeric(usda$Sodium > mean(usda$Sodium, na.rm = TRUE))

str(HighSodium)

usda$HighSodium <- as.numeric(usda$Sodium > mean(usda$Sodium, na.rm = TRUE))

str(usda)

usda$HighProtein <- as.numeric(usda$Protein > mean(usda$Protein, na.rm = TRUE))

usda$HighFat <- as.numeric(usda$TotalFat > mean(usda$TotalFat, na.rm = TRUE))

usda$HighCarbs <- as.numeric(usda$Carbohydrate > mean(usda$Carbohydrate, na.rm = TRUE))

str(usda)

table(usda$HighSodium)

table(usda$HighSodium, usda$HighFat)

tapply(usda$Iron, usda$HighProtein, mean, na.rm = TRUE)

tapply(usda$VitaminC, usda$HighCarbs, max, na.rm = TRUE)

tapply(usda$VitaminC, usda$HighCarbs, summary, na.rm = TRUE)

library(ggplot2)

ggplot(data = na.omit(usda[,c('HighCarbs','VitaminC')])) + geom_boxplot(aes(x = factor(HighCarbs), y = VitaminC))
