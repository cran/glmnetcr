\name{coef.glmnet.cr}
\alias{coef.glmnet.cr}
\title{
Extract All Model Coefficients
}
\description{
The \code{coef.glmnet.cr} function returns all estimated coefficients for a \code{glmnet.cr} fitted model, where the model selected is indicated by step s.}
\usage{
\method{coef}{glmnet.cr}(object, s, ...)
}
\arguments{
  \item{object}{a \code{glmnet.cr} object}
  \item{s}{the step at which the coefficient estimates are desired}
  \item{\dots}{additional optional arguments}
}
\value{
\item{a0}{the intercept}
\item{beta}{estimated coefficients for the variables and the ordinal thresholds}
}
\author{
Kellie J. Archer, \email{kjarcher@vcu.edu}
}
\seealso{
See Also as \code{\link{glmnet.cr}}, \code{\link{nonzero.glmnet.cr}}, \code{\link{select.glmnet.cr}}
}
\examples{
data(diabetes)
x <- diabetes[, 2:dim(diabetes)[2]]
y <- diabetes$y
glmnet.fit <- glmnet.cr(x, y)
BIC.model <- select.glmnet.cr(glmnet.fit)
estimates <- coef(glmnet.fit, s = BIC.model)
}
\keyword{ methods }
