\name{glmnetcr-package}
\alias{glmnetcr-package}
\alias{glmnetcr}
\docType{package}
\title{
Penalized Constrained Continuation Ratio Models for Ordinal Response Prediction using glmnet
}
\description{
This package provides a function \code{glmnet.cr} for fitting penalized constrained continuation ratio models for predicting an ordinal response and associated methods for plotting, printing, extracting predicted classes and probabilities, and extracting estimated coefficients for selected models in the regularization path. }
\details{
\tabular{ll}{
Package: \tab glmnetcr\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-03-02\cr
License: \tab GPL2.0\cr
LazyLoad: \tab yes\cr
}
This package contains functions for fitting penalized constrained continuation ratio models and extracting estimated coefficients, predicted class, and fitted probabilities. The model and methods can be used when the response to be predicted is ordinal, and is particularly relevant when there are more covariates than observations. 
}
\author{
Kellie J. Archer

Maintainer: Kellie J. Archer <kjarcher@vcu.edu>
}
\references{
Kellie J. Archer and Andre A.A. Williams (2011) Technical Report.
}
\keyword{ package }
\keyword{ models }
\keyword{ classif }

\seealso{
 See also \code{\link[glmnet:glmnet]{glmnet}} ~~
}
\examples{
data(diabetes)
x <- diabetes[, 2:dim(diabetes)[2]]
y <- diabetes$y
glmnet.fit <- glmnet.cr(x, y)
AIC <- select.glmnet.cr(glmnet.fit, which="AIC")
fitted(glmnet.fit, s=AIC)
}
