fitted.glmnetcr <-
function(object,newx=NULL,s,...) {
	if (is.null(newx)) {newx<-object$x}
	method <- object$method
	predict.fit<-predict.glmnetcr(object,newx=newx,method=method)
	list(BIC=predict.fit$BIC[s],AIC=predict.fit$AIC[s],class=predict.fit$class[,s],probs=predict.fit$probs[,,s])
}

