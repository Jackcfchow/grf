% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/instrumental_forest.R
\name{predict.instrumental_forest}
\alias{predict.instrumental_forest}
\title{Predict with an instrumental forest}
\usage{
\method{predict}{instrumental_forest}(
  object,
  newdata = NULL,
  num.threads = NULL,
  estimate.variance = FALSE,
  ...
)
}
\arguments{
\item{object}{The trained forest.}

\item{newdata}{Points at which predictions should be made. If NULL, makes out-of-bag
predictions on the training set instead (i.e., provides predictions at
Xi using only trees that did not use the i-th training example). Note
that this matrix should have the number of columns as the training
matrix, and that the columns must appear in the same order.}

\item{num.threads}{Number of threads used in training. If set to NULL, the software
automatically selects an appropriate amount.}

\item{estimate.variance}{Whether variance estimates for hat{tau}(x) are desired
(for confidence intervals).}

\item{...}{Additional arguments (currently ignored).}
}
\value{
Vector of predictions, along with (optional) variance estimates.
}
\description{
Gets estimates of tau(x) using a trained instrumental forest.
}
