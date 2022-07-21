library(readr)
library(ggplot2)


X <- read.csv(url("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv"))
View(X)
model<- lm(Scores~Hours,X)
summary(model)
lm(Scores ~ Hours, data = X)
ggplot(X,aes(x=Hours,y=Scores))+geom_point()
plot (X)
abline(model, col="Red")

pre<-data.frame(Hours=9.25)
result<-predict(model,pre)
print(result)
