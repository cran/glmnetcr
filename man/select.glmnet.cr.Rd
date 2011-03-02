\name{select.glmnet.cr}
\alias{select.glmnet.cr}
\title{Select Step of Optimal Fitted AIC or BIC CR Model}
\description{
This function returns the step number associated with the minimum AIC or BIC models for a \code{glmnet.cr} object and so can be used in selecting the step number in calls in functions such as \code{coef.glmnet.cr}, \code{nonzero.glmnet.cr}, and \code{fitted.glmnet.cr}}
\usage{
select.glmnet.cr(fit, which = "BIC")
}
\arguments{
  \item{fit}{a \code{glmnet.cr} object}
  \item{which}{determines whether the step is associated with the optimal \code{which="BIC"} model or \code{which="AIC"} model}
}

\value{
A numeric value of length one representing the step number.
}
\author{
Kellie J. Archer, \email{kjarcher@vcu.edu}}


\seealso{
See Also as \code{\link{coef.glmnet.cr}}, \code{\link{nonzero.glmnet.cr}}, \code{\link{fitted.glmnet.cr}}
}
\examples{
data(diabetes)
x <- diabetes[, 2:dim(diabetes)[2]]
y <- diabetes$y
glmnet.fit <- glmnet.cr(x, y)
AIC <- select.glmnet.cr(glmnet.fit, which = "AIC")
AIC
nonzero.glmnet.cr(glmnet.fit, s = AIC)
}
\keyword{ misc }
