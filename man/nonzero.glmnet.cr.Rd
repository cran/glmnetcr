\name{nonzero.glmnet.cr}
\alias{nonzero.glmnet.cr}
\title{
Extract Non-Zero Model Coefficients}
\description{
The \code{nonzero.glmnet.cr} function returns only those non-zero coefficient estimates for a selected model}
\usage{
nonzero.glmnet.cr(fit, s)
}
\arguments{
  \item{fit}{a \code{glmnet.cr} object}
  \item{s}{the step at which the non-zero coefficient estimates are desired}
}
\value{
  \item{a0}{intercept estimate}
  \item{beta}{non-zero estimates for variables and ordinal thresholds}
}
\author{
 Kellie J. Archer, \email{kjarcher@vcu.edu}
}
\seealso{
 See Also as \code{\link{glmnet.cr}}, \code{\link{coef.glmnet.cr}}, \code{\link{select.glmnet.cr}}
}
\examples{
data(diabetes)
x <- diabetes[, 2:dim(diabetes)[2]]
y <- diabetes$y
glmnet.fit <- glmnet.cr(x, y)
AIC.step <- select.glmnet.cr(glmnet.fit, which = "AIC")
nonzero.glmnet.cr(glmnet.fit, s = AIC.step)
}
\keyword{ misc }
