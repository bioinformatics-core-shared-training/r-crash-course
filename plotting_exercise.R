gapminder <- read.csv("gapminder.csv")
png("images/plotting_exercise_target.png")
plot(gapminder$pop,gapminder$lifeExp,pch=16,
     ylab="Life Expectancy",
     xlab="Population",main="Life Expectancy trend with population")


outliers <- gapminder$pop > 3.5e8
points(gapminder$pop[outliers],gapminder$lifeExp[outliers],col="red",pch=16)
abline(v=3.5e8,lty=2,col="red")
dev.off()