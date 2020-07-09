\name{SRR1779959.bam}
\docType{data}
\alias{SRR1779959.bam}
\title{
'SRR1779959.bam.Rd'data
}
\description{
Bam file for single-cell ATAC-seq data (GEO Accession GSE65360). 
}
\details{
Original .fastq files were downloaded and then alignments were performed to obtained these files

Source: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE65360
}
\examples{
library(GenomicAlignments)
fl <- system.file("extdata", "SRR1779959.bam", package = "SCATEData")
a <- readGAlignments(fl)
}
\keyword{datasets}
