fp<- read.csv(file.choose()) # FUNCTION TO IMPORT DATA 
fp
dim(fp)
#VISUALIZING THE DATA 
plot(fp[,"petrol"],fp[,"x"], main="FUEL PRICE VISUALIZATION",
    xlab="PETROL", ylab="CRUDE OIL KSH")
#computing the model
fp.lm<- lm(x~ petrol,data=fp)
# THE RESULT: X=-8.5567+0.4719PETROL
fp.lm
#ANALYZE THE MODEL'S QUALITY
summary(fp.lm)
#ANALYZE RESIDUAL QUALITY
plot(fitted(fp.lm),resid(fp.lm))
#testing residuals with Q-Q
qqnorm(resid(fp.lm))
qqline(resid(fp.lm))
#Normally distributed since the plots follow a straight line
