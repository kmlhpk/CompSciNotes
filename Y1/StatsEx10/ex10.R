m1l = c(130,155,74,180)
m1m = c(34,40,80,75)
m1h = c(20,70,82,58)
m2l = c(150,188,159,126)
m2m = c(136,122,106,115)
m2h = c(25,70,58,45)
m3l = c(138,110,168,160)
m3m = c(174,120,150,139)
m3h = c(96,104,82,60)

mean(m1l)
mean(m1m)
mean(m1h)
mean(m2l)
mean(m2m)
mean(m2h)
mean(m3l)
mean(m3m)
mean(m3h)

m1lr = m1l - mean(m1l)
m1mr = m1m - mean(m1m)
m1hr = m1h - mean(m1h)
m2lr = m2l - mean(m2l)
m2mr = m2m - mean(m2m)
m2hr = m2h - mean(m2h)
m3lr = m3l - mean(m3l)
m3mr = m3m - mean(m3m)
m3hr = m3h - mean(m3h)

resids=c(m1lr,m1mr,m1hr,m2lr,m2mr,m2hr,m3lr,m3mr,m3hr)

m1lr
m1mr
m1hr
m2lr
m2mr
m2hr
m3lr
m3mr
m3hr

mean(abs(m1lr))
mean(abs(m1mr))
mean(abs(m1hr))
mean(abs(m2lr))
mean(abs(m2mr))
mean(abs(m2hr))
mean(abs(m3lr))
mean(abs(m3mr))
mean(abs(m3hr))

mean(m1l) - 144.833
mean(m1m) - 107.583
mean(m1h) - 64.167
mean(m2l) - 144.833
mean(m2m) - 107.583
mean(m2h) - 64.167
mean(m3l) - 144.833
mean(m3m) - 107.583
mean(m3h) - 64.167

144.833 - 105.528
107.583 - 105.528
64.167  - 105.528

mean(m1l) - 144.833 - (-22.361)
mean(m1m) - 107.583 - (-22.361)
mean(m1h) - 64.167  - (-22.361)

mean(m2l) - 144.833 - (2.806)
mean(m2m) - 107.583 - (2.806)
mean(m2h) - 64.167  - (2.806)

mean(m3l) - 144.833 - (19.556)
mean(m3m) - 107.583 - (19.556)
mean(m3h) - 64.167  - (19.556)

ints = c((mean(m1l) - 144.833 - (-22.361)), (mean(m1m) - 107.583 - (-22.361)), (mean(m1h) - 64.167  - (-22.361)), (mean(m2l) - 144.833 - (2.806)), (mean(m2m) - 107.583 - (2.806)), (mean(m2h) - 64.167  - (2.806)), (mean(m3l) - 144.833 - (19.556)), (mean(m3m) - 107.583 - (19.556)), (mean(m3h) - 64.167  - (19.556)))

#Materials - row group effects; Temps - column group effects; Interactions; Residual BP

stripchart(c(-22.361,2.806,19.556), 
           vertical = TRUE, 
           xlim=c(0.8,2.7),
           ylim=c(range(resids)),
           main="Effects and Residuals Plot for Materials vs Temperature Battery Data",
           ylab="Deviation from average response")

text(1, 
     c(-22.361-2.5,2.806-2.5,19.556-2.5), 
     labels=c("Material 1", "Material 2", "Material 3"))

stripchart(c(39.305,2.055,-41.361), 
           vertical = TRUE,
           add = TRUE,
           at = 1.5)

text(1.5, 
     c(39.305-2.7,2.055-2.7,-41.361+2.9), 
     labels=c("Low Temp", "Mid Temp", "High Temp"))

stripchart(ints, 
           vertical = TRUE,
           add = TRUE,
           at = 2)

boxplot(resids,
        add=TRUE,
        at = 2.5)

axis(1, 
     at=c(1,1.5,2,2.5), 
     labels=c("Material Effects", "Temperature Effects", "Interaction Effects", "Residuals"),
     tick=TRUE)

sum(ints^2)
ints_s = ints^2
4*sum(ints_s)
12*sum(c(-22.361,2.806,19.556)^2)
12*sum(c(39.305,2.055,-41.361)^2)
sum(resids^2)
resids

acc = 1/(sqrt(3))

m1ls = sd(m1l)
m1ms = sd(m1m)
m1hs = sd(m1h)
m2ls = sd(m2l)
m2ms = sd(m2m)
m2hs = sd(m2h)
m3ls = sd(m3l)
m3ms = sd(m3m)
m3hs = sd(m3h)

sds = c(m1ls,m1ms,m1hs,m2ls,m2ms,m2hs,m3ls,m3ms,m3hs)
sds_l = log(sds)

plot(c(1:9),
     sds_l,
     xlim=c(0.8,9.2),
     ylim=range(c(sds_l-acc, sds_l+acc)), 
     main="Assessment of homogeneity", 
     xlab="Factor Pair", 
     ylab="log(Group standard deviation) +/- 1/sqrt(m-1)")

arrows(c(1:9), 
       sds_l-acc, c(1:9), 
       sds_l+acc, 
       length=0.05, 
       angle=90, 
       code=3)
text(c(1:9), 
     c(3.1,3.85,2.6,2.55,3.25,3.7,2.55,3.8,3.7),
     labels=c("Mat. 1 Low", "Mat. 1 Med.", "Mat. 1 High", "Mat. 2 Low", "Mat. 2 Med.", "Mat. 2 High", "Mat. 3 Low", "Mat. 3 Med.", "Mat. 3 High"))