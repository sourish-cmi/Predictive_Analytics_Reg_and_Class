y = c(28,23,14,27,33,36,34,29,18,21,20,22,11,14,11,16)

data = matrix(y,nrow=4,byrow=F)
colnames(data) = c('Toxin 1','Toxin 2','Toxin 3','Control')
data

apply(data,2,mean)

treatment_ = c(rep('Toxin 1',4),rep('Toxin 2',4)
               ,rep('Toxin 3',4),rep('Control',4))

df = cbind.data.frame(y,treatment_)

mod = lm(y~treatment_,data=df)

X = model.matrix(mod)

beta_hat = solve(t(X)%*%X)%*%t(X)%*%y

cbind(coef(mod),beta_hat)



