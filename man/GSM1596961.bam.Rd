\name{GSM1596961.bam}
\docType{data}
\alias{GSM1596961}
\title{
'GSM1596961.bam.Rd'data
}
\description{
Bam file for single-cell ATAC-seq data (GEO Accession GSE65360). 
}
\details{
Original .fastq files were downloaded and then alignments were performed to obtained these files

Source: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE65360
}
\usage{
Please refer to [`SCATE` tutorial](https://github.com/Winnie09/SCATE) for the loading and use of the data.
}
\examples{
library(GenomicAlignments)
fl <- system.file("extdata", "GSM1596961.bam", package = "SCATEData")
a <- readGAlignments(fl)
}
\keyword{datasets}
