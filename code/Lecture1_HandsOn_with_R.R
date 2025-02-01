attach(mtcars)
mtcars
n = nrow(mtcars)
y = mtcars[,'mpg']

predictors_nm = c("hp","wt","disp")

x = mtcars[,predictors_nm]
Int = rep(1,n)

X = as.matrix(cbind(Int,x))


## Calculate X'X

Xt_x_X = t(X)%*%X

## Calculate inverse of X'X
inv_Xt_x_X = solve(Xt_x_X)

## Calculate beta

beta_hat = inv_Xt_x_X%*%t(X)%*%y


#### Fit Linear Regression usin lm
#### mpg = b0 + b1* hp + b2* wt + b3 * disp + e

fit = lm(mpg~hp+wt+disp, data = mtcars)

cbind(coef(fit),beta_hat)

###############################


plot(mtcars$hp, mtcars$mpg,pch=20
     ,xlab = "Horse Power"
     ,ylab = "Miles per Gallon")
abline(lm(mpg~hp,data=mtcars),col="red",lwd=3,lty=2)
grid(col='grey')


####################

head(mtcars)
str(mtcars)

mtcars$cyl=as.factor(mtcars$cyl)

fit2 = lm(mpg~cyl,data=mtcars)





