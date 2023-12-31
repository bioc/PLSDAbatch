% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/managing_batch_effects.R
\name{percentileofscore}
\alias{percentileofscore}
\title{Percentile score}
\usage{
percentileofscore(df, control.index)
}
\arguments{
\item{df}{A data frame that contains the microbial variables and required to
be converted into percentile scores. Samples as rows and variables
as columns.}

\item{control.index}{A numeric vector that contains the indexes
of control samples.}
}
\value{
A data frame of percentile scores for each microbial variable
and each sample.
}
\description{
This function converts the relative abundance of microbial variables
(i.e. bacterial taxa) in case (i.e. disease) samples to percentiles of
the equivalent variables in control (i.e. healthy) samples.
It is a built-in function of \code{percentile_norm}.
}
\examples{
# A built-in function of percentile_norm, not separately used.
# Not run
library(TreeSummarizedExperiment)
data('AD_data')

ad.clr <- assays(AD_data$EgData)$Clr_value
ad.batch <- rowData(AD_data$EgData)$Y.bat
ad.trt <- rowData(AD_data$EgData)$Y.trt
names(ad.batch) <- names(ad.trt) <- rownames(AD_data$EgData)
trt.first.b <- ad.trt[ad.batch == '09/04/2015']
ad.first.b.pn <- percentileofscore(ad.clr[ad.batch == '09/04/2015', ],
                                    which(trt.first.b == '0-0.5'))


}
\references{
\insertRef{gibbons2018correcting}{PLSDAbatch}
}
\keyword{Internal}
