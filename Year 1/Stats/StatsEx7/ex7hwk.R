t=c(2,4,6,8,10,12,14,16,18,20,22,24)
y=c(0.69,1.50,1.43,1.64,2.01,1.96,2.28,2.10,2.02,2.33,2.32,2.42)
t_y=t/y
plot(t,y)
plot(t,t_y)
lm(t_y~t)
abline(lm(t_y~t))
t_yRes=(t_y-(1.88+0.3451*(t)))
plot(t, t_yRes)
abline(0,0)
t_y_hat = 1.88+0.3451*(17)
17 / t_y_hat
t_y_sdRes = sqrt((1/11)*sum(t_yRes^2))
cor(t_y, t)
sd(t_y)
(sd(t_y))*sqrt(1-(cor(t_y, t))^2)
t_y_sdRes