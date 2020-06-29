\name{SCATEData}
\docType{data}
\alias{SCATEData}
\alias{SCATEData-package}
\title{
Data package for SCATE to extract and enhance the sparse and discrete Single-cell ATAC-seq Signal
}
\description{
Data package for SCATE which is a software for extracting and enhancing the sparse and discrete Single-cell ATAC-seq Signal. This package contains data in the \code{\link{GenomicRanges}} format that SCATE needs for compiling examples or running the algorithm. It is hosted on Bioconductor ExperimentHub.
}
\details{

\emph{Overview}

The `SCATEData` is an extensive data resources containing the location of genomic regions bins, the mean and standard deviation of normalized bulk DNase-seq signals across ENCODE samples, and the clustering of the genomic bins based on bulk DNase-seq signals. These data have been formatted as `GenomicRanges` Bioconductor objects and hosted on Bioconductor's `ExperimentHub` platform. 

`SCATEData` provides data resources for the package `SCATE` to extract and enhance the sparse and discrete Single-cell ATAC-seq Signal. 

\emph{Datasets}

The package contains the following datasets, which can be used by `SCATE` to extract and enhance the sparse Single-cell ATAC-seq signals. They are grouped into datasets useful for (i) running `SCATE`, and (ii) providing examples.

- Loaded by `SCATE`:
\itemize{
    \item \code{\link{hg19.rds}}
    \item \code{\link{mm10.rds}}
}

- scATAC-seq example files:
\itemize{
    \item \code{\link{GSM1596831.bam}}		
    \item \code{\link{GSM1596940.bam}}		
    \item \code{\link{GSM1597041.bam}}		
    \item \code{\link{SRR1779856.bam}}		
    \item \code{\link{SRR1779973.bam}}		
    \item \code{\link{GSM1596840.bam}}		
    \item \code{\link{GSM1596942.bam}}		
    \item \code{\link{GSM1597096.bam}}		
    \item \code{\link{SRR1779874.bam}}		
    \item \code{\link{SRR1780018.bam}}
    \item \code{\link{GSM1596874.bam}}		
    \item \code{\link{GSM1596944.bam}}		
    \item \code{\link{SRR1779746.bam}}		
    \item \code{\link{SRR1779956.bam}}		
    \item \code{\link{SRR1780020.bam}}
    \item \code{\link{GSM1596881.bam}}		
    \item \code{\link{GSM1596961.bam}}		
    \item \code{\link{SRR1779805.bam}}		
    \item \code{\link{SRR1779959.bam}}		
    \item \code{\link{SRR1780054.bam}}
    \item \code{\link{GSM1596831.bam.bai}}	
    \item \code{\link{GSM1596940.bam.bai}}	
    \item \code{\link{GSM1597041.bam.bai}}	
    \item \code{\link{SRR1779856.bam.bai}}	
    \item \code{\link{SRR1779973.bam.bai}}	
    \item \code{\link{GSM1596840.bam.bai}}	
    \item \code{\link{GSM1596942.bam.bai}}	
    \item \code{\link{GSM1597096.bam.bai}}	
    \item \code{\link{SRR1779874.bam.bai}}	
    \item \code{\link{SRR1780018.bam.bai}}
    \item \code{\link{GSM1596874.bam.bai}}	
    \item \code{\link{GSM1596944.bam.bai}}	
    \item \code{\link{SRR1779746.bam.bai}}	
    \item \code{\link{SRR1779956.bam.bai}}	
    \item \code{\link{SRR1780020.bam.bai}}
    \item \code{\link{GSM1596881.bam.bai}}	
    \item \code{\link{GSM1596961.bam.bai}}	
    \item \code{\link{SRR1779805.bam.bai}}	
    \item \code{\link{SRR1779959.bam.bai}}	
    \item \code{\link{SRR1780054.bam.bai}}
}

These `.bam` files are Single-cell ATAC-seq reads and the corresponding `.bam.bai` files are for indexing and searching for the reads in these files.
For more extensive documentation, please refer to the metadata or help files for the objects.

\emph{How to load data}

Please refer to [`SCATE` tutorial](https://github.com/Winnie09/SCATE) for the loading and use of the data.

\emph{Citation}

If the `SCATEData` package is useful in your work, please cite the following paper:
- [Zhicheng Ji, Weiqiang Zhou, Hongkai Ji (2019), *Single-cell ATAC-seq Signal Extraction and Enhancement with SCATE*, bioRxiv, v1.](https://www.biorxiv.org/content/10.1101/795609v1)
}
\keyword{datasets}
