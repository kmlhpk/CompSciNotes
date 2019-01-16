rad1 = c(100.7,39.5,35.3,18.3,60.0,42.0,17.7,17.0,75.9,47.0,29.0,13.1)
rad4 = c(25.0,15.1,17.0,10.0,17.5,16.6,12.5,8.0,20.5,19.3,13.8,9.0)
rad7 = c(14.9,11.0,7.0,9.5,18.0,14.0,9.0,8.0,17.0,14.5,11.5,8.6)

total = c(rad1,rad4,rad7)

meantot = mean(total)
mean1 = mean(rad1)
mean4 = mean(rad4)
mean7 = mean(rad7)

res1 = rad1 - mean1
res4 = rad4 - mean4
res7 = rad7 - mean7

ge1 = mean1-meantot
ge4 = mean4-meantot
ge7 = mean7-meantot

restot = c(res1,res4,res7)
reslim=range(restot)

s1=sd(rad1)
s4=sd(rad4)
s7=sd(rad7)
sds = log(c(s1,s4,s7))
sds_i=c(1,4,7)
#a) group effect = group mean - overall mean
#   group effect for group 1 = 41.29167 - 22.85556 = 18.43611
#   residual for datapoint (1,1) = 100.7 - 41.29167 = 59.40833
#   decomposition: 100.7 = 18.43611 + 59.40833 + 22.85556

stripchart(c(ge1,ge4,ge7), 
           vertical = TRUE, 
           xlim=c(0.8,1.8),
           ylim=reslim,
           main="Effects and Residuals Plot for Radius/Tool Life Data",
           ylab="Deviation from average response")
text(0.9, c(ge1,ge4,ge7), labels=c("Radius 1", "Radius 4", "Radius 7"))
boxplot(restot,add=TRUE,at = 1.5)
axis(1, at=c(1,1.5), labels=c("Radius Group Effects", "Residuals"), tick=TRUE)
boxplot(rad1, xlab="Radius 1", ylab="Tool life, minutes", main="Tool life of 1-inch Radius Drill Bits")
plot(sds_i,sds, ylim=range(c(sds-0.30151, sds+0.30151)), main="Assessment of homogeneity", xlab="Radius Group", ylab="log(Group standard deviation) +/- 1/sqrt(n-1)")
arrows(sds_i, sds-0.30151, sds_i, sds+0.30151, length=0.05, angle=90, code=3)
