\name{cr.forward}
\alias{cr.forward}
\title{
Forward Continuation Ratio Restructure Function}
\description{
This is an internal function used by \code{glmnet.cr} to restructure an ordinal dataset to represent the K-1 conditionally independent likelihoods needed for fitting a forward continuation ratio model}
\usage{
cr.forward(x, y)
}
\arguments{
  \item{x}{covariates to be included in the model}
  \item{y}{ordinal outcome}
}
\value{
  \item{object}{Yields an object where the first column y is the ordinal outcome that has been dichotomously coded and the expanded covariate matrix for the K-1 conditionally independent likelihoods}
}
\author{
Kellie J. Archer}
\seealso{
See Also as \code{\link{cr.backward}}, \code{\link{glmnet.cr}}
}
\examples{
data(diabetes)
x <- diabetes[,2:dim(diabetes)[2]]
y <- diabetes$y
fit <- glmnet.cr(x, y, method = "forward")
}
\keyword{ internal }