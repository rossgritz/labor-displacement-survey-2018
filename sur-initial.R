
install.packages("systemfit")
install.packages('plm')
install.packages('lmtest')
library(systemfit)
library(plm)
library(lmtest)




#***
#MODEL AND TRANSFORMED DATA 
#***
df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/50%narrow_system2.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)
bptest(r1,data=df)
bptest(r2,data=df)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%narrow_system2.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)
bptest(r1,data=df)
bptest(r2,data=df)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%broad_system2.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)
bptest(r1,data=df)
bptest(r2,data=df)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%narrow_system2.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)
bptest(r1,data=df)
bptest(r2,data=df)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%broad_system2.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)
bptest(r1,data=df)
bptest(r2,data=df)

