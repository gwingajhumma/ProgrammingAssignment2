subject<-read.csv(file.choose(),header=T)
View(Subject)

LogisticModel1<- glm (Stress~Plays.Mobile.Games+Vices+GWA+Scholar+Pandemic+Family.Income, data=DATA,family=binomial(link="logit"))
summary(LogisticModel1)

LogisticModel2<- glm (Stress~Plays.Mobile.Games+Vices+GWA+Scholar+Pandemic, data=DATA,family=binomial(link="logit"))
summary(LogisticModel2)

LogisticModel3<- glm (Stress~Plays.Mobile.Games+Vices+GWA+Pandemic, data=DATA,family=binomial(link="logit"))
summary(LogisticModel3)

LogisticModel4<- glm (Stress~Plays.Mobile.Games+Vices+GWA, data=DATA,family=binomial(link="logit"))
summary(LogisticModel4)