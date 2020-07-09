\name{hg19.rds}
\docType{data}
\alias{hg19.rds}
\alias{hg19 annotation file}
\title{
'hg19' dataset
}
\description{
hg19 annotation file for SCATE
}
\details{
This is a hg19 annotation file for SCATE package.

File sizes: 66 MB.

Source: https://github.com/zji90/SCATE/tree/master/inst/extdata
}
\usage{
}
\examples{
  fl <- system.file("extdata", "hg19.rds", package = "SCATEData")
  a <- readRDS(fl)
}
\keyword{datasets}
