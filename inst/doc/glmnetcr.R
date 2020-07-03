### R code from vignette source 'glmnetcr.Rnw'

###################################################
### code chunk number 1: glmnetcr.Rnw:75-77
###################################################
old<-options()
options(prompt="R> ", continue="+  ", width=70, useFancyQuotes=FALSE)


###################################################
### code chunk number 2: glmnetcr.Rnw:79-87
###################################################
library("glmnetcr")
data("diabetes")
dim(diabetes)
names(diabetes)[1:10]
summary(diabetes$y)
x <- diabetes[, 2:dim(diabetes)[2]]
y <- diabetes$y
fit <- glmnetcr(x, y)


###################################################
### code chunk number 3: glmnetcr.Rnw:90-91
###################################################
print(fit)


###################################################
### code chunk number 4: glmnetcr.Rnw:95-96
###################################################
plot(fit, xvar = "step", type = "bic")


###################################################
### code chunk number 5: glmnetcr.Rnw:104-105
###################################################
plot(fit, xvar = "step", type = "coefficients")


###################################################
### code chunk number 6: glmnetcr.Rnw:112-114
###################################################
plot(fit, xvar = "step", type = "bic")
plot(fit, xvar = "step", type = "coefficients")


###################################################
### code chunk number 7: glmnetcr.Rnw:118-122
###################################################
BIC.step <- select.glmnetcr(fit)
BIC.step
AIC.step <- select.glmnetcr(fit, which = "AIC")
AIC.step


###################################################
### code chunk number 8: glmnetcr.Rnw:125-129
###################################################
coefficients<-coef(fit, s = BIC.step)
coefficients$a0
sum(coefficients$beta != 0)
nonzero.glmnetcr(fit, s = BIC.step)


###################################################
### code chunk number 9: glmnetcr.Rnw:133-134
###################################################
fit <- glmnetcr(x, y, method = "forward")


###################################################
### code chunk number 10: glmnetcr.Rnw:137-139
###################################################
BIC.step <- select.glmnetcr(fit)
BIC.step


###################################################
### code chunk number 11: glmnetcr.Rnw:143-147
###################################################
coefficients<-coef(fit, s = BIC.step)
coefficients$a0
sum(coefficients$beta != 0)
nonzero.glmnetcr(fit, s = BIC.step)


###################################################
### code chunk number 12: glmnetcr.Rnw:152-155
###################################################
hat<-fitted(fit, s = BIC.step)
names(hat)
table(hat$class, y)


###################################################
### code chunk number 13: glmnetcr.Rnw:161-162
###################################################
options(old)


