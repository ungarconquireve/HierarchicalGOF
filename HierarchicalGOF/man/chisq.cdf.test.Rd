% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pivot_functions.R
\name{chisq.cdf.test}
\alias{chisq.cdf.test}
\title{function to calculate Bayesian Goodness-of-fit diagnostics using chi-squared distribution on inverse CDF
Algorithm due to Yuan and Johnson 2012 Biometrics 68:156-164}
\usage{
chisq.cdf.test(Y, Theta, K = 1, L = 5, mean.fcn, var.fcn, cdf.fcn,
  pmf.fcn = NULL, DISCRETE = FALSE)
}
\arguments{
\item{Y}{An (Number of observations x Number of mcmc samples) matrix of "Data" (these can actually be parameters as well; these are whatever the "leaf" level of the hierarchy being tested are).
Each column should give a sample of Y from the posterior}

\item{Theta}{A (n_params x n_samples) matrix giving draws from the posterior distribution of parameter values}

\item{K}{Number of bins for mean response.  Note if there is no variation in mean response, set to 1 (default)}

\item{L}{Number of bins per mean response bin}

\item{mean.fcn}{Name of function for producing E(Y|Theta) - should be a function of Theta}

\item{var.fcn}{Name of function for producing Var(Y|Theta) - should be a function of Theta}

\item{cdf.fcn}{Name of function for evaluating cumulative distribution or mass function for [Y|Theta] - should be a function of two arguments, Y and Theta.}

\item{pmf.fcn}{Name of function for evaluating the pdf [Y|Theta] (only needed if a discrete distribution) - should be a function of two arguments, Y and Theta}

\item{DISCRETE}{If TRUE (default is false), denotes a discrete response; in such cases a pmf.fcn needs to be provided}
}
\value{
A list object with the following elements:
      \itemize{
        \item{"pval.k"}{K-dimensional vector giving p-values for each partition of mean response}
        \item{"pval.tot}{Overall p-value associated with the test}
        \item{"gof.plot}{A plot of average residual difference from theoretical quantiles}
       }
#' @import mvtnorm RandomFields spatstat gridExtra
}
\description{
function to calculate Bayesian Goodness-of-fit diagnostics using chi-squared distribution on inverse CDF
Algorithm due to Yuan and Johnson 2012 Biometrics 68:156-164
}
\author{
Paul B. Conn
}
\keyword{simulation}
\keyword{spatio-temporal,}
