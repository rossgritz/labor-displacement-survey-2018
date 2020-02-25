
install.packages("systemfit")
install.packages('plm')
install.packages('lmtest')
library(systemfit)
library(plm)
library(lmtest)




#***
#ONLY USING DUMMY FOR NAIVE CALIBRATION
#***
df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%broad_calibration.csv", header=T)
r1<-DV1~IV11
r2<-DV2~IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%narrow_calibration.csv", header=T)
r1<-DV1~IV11
r2<-DV2~IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%broad_calibration.csv", header=T)
r1<-DV1~IV11
r2<-DV2~IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%narrow_calibration.csv", header=T)
r1<-DV1~IV11
r2<-DV2~IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/50%narrow_calibration.csv", header=T)
r1<-DV1~IV11
r2<-DV2~IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)





#***
#USING ALL DUMMIES INCLUDING NAIVE CALIBRATION
#***
df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%broad_calibration.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%narrow_calibration.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%broad_calibration.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%narrow_calibration.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/50%narrow_calibration.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)








#***
#USING ALL DUMMIES WITH DISCRETIZED WEIGHTS NAIVE CALIBRATION
#***
df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%broad_calibration_w.csv", header=T)
df$IV11_2 = df$IV11*df$IV11
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11#+IV11_2
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11#+IV11_2
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/99%narrow_calibration_w.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%broad_calibration__w.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/90%narrow_calibration_w.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)


df<-read.csv("/Users/g/Dropbox/_AI_Forecasting/surveys/50%narrow_calibration_w.csv", header=T)
r1<-DV1~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
r2<-DV2~IV1+IV2+IV3+IV4+IV5+IV6+IV7+IV8+IV9+IV10+IV11
sur<-systemfit(list(median=r1, uncertainty=r2),"SUR",data=df)
summary(sur)

