WHO <- read.csv('WHO.csv')
table(WHO$Region)
tapply(WHO$Under15, WHO$Region, mean)
Ouliers <- subset(WHO, WHO$GNI > 10000 & WHO$FertilityRate > 2.5)
ggplot(data = WHO) + geom_point(aes(WHO$GNI, WHO$FertilityRate, color=WHO$Region)) + 
  geom_point(data = Ouliers, aes(Ouliers$GNI, Ouliers$FertilityRate, alpha = Country), size = 3)
