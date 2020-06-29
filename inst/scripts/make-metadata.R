## Each row of the metadata file represents a resource added to one of
## the 'Hubs'. This example creates a metadata.csv file for a single resource.
## In the case of multiple resources, the arguments below would be character
## vectors that produced multiple rows in the data.frame.

af <- list.files('/Users/wenpinhou/Dropbox/SCATE/package/SCATEData/inst/extdata/')
af <- af[grepl('bam',af)]
af <- af[!grepl('bai', af)]
df <- lapply(af, function(f){
    data.frame(
    Title = f,
    Description = "Bam file for single-cell ATAC-seq data (GEO Accession GSE65360). Original .fastq files were downloaded and then alignments were performed to obtained these files",
    BiocVersion = "3.12",
    Genome = "hg19",
    SourceType = "BAM",
    SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE65360",
    SourceVersion = "Jan 01 2019",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = "GEO",
    Maintainer = "Wenpin Hou <wp.hou3@gmail.com>",
    RDataClass = "BamFile",
    DispatchClass = "BamFile",
    ResourceName =  f, 
    RDataPath = paste0('SCATEData/',f, ':SCATEData/', sub('.bam', '.bam.bai', f)),
    Tags = 'bam',
    stringsAsFactors = F)
})
df1 <- do.call(rbind, df)
str(df1)

df2 <- data.frame(
    Title = 'hg19 annotation file',
    Description = "hg19 annotation file for SCATE",
    BiocVersion = "3.12",
    Genome = "hg19",
    SourceType = "RDS",
    SourceUrl = "https://github.com/zji90/SCATE/tree/master/inst/extdata",
    SourceVersion = "Jan 01 2019",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = "SCATE",
    Maintainer = "Wenpin Hou <wp.hou3@gmail.com>",
    RDataClass = "list",
    DispatchClass = "Rds",
    ResourceName = "hg19.rds", 
    RDataPath = 'SCATEData/hg19.rds',
    Tags = 'hg19:annotation',
    stringsAsFactors = F)

df3 <- data.frame(
    Title = 'mm10 annotation file',
    Description = "mm10 annotation file for SCATE",
    BiocVersion = "3.12",
    Genome = "mm10",
    SourceType = "RDS",
    SourceUrl = "https://github.com/zji90/SCATE/tree/master/inst/extdata",
    SourceVersion = "Jan 01 2019",
    Species = "Mus musculus",
    TaxonomyId = 10090,
    Coordinate_1_based = TRUE,
    DataProvider = "SCATE",
    Maintainer = "Wenpin Hou <wp.hou3@gmail.com>",
    RDataClass = "list",
    DispatchClass = "Rds",
    ResourceName = "mm10.rds", 
    RDataPath = 'SCATEData/mm10.rds',
    Tags = 'mm10:annotation',
    stringsAsFactors = F)

meta = rbind(df1, df2, df3)
## Not run: 
## Write the data out and put in the inst/extdata directory.
write.csv(meta, file="/Users/wenpinhou/Dropbox/SCATE/package/SCATEData/inst/extdata/metadata.csv", row.names=FALSE)

## Test the validity of metadata.csv
# library(AnnotationHubData)
# library(ExperimentHub)
# library(ExperimentHubData)
# makeAnnotationHubMetadata("/Users/wenpinhou/Dropbox/SCATE/package/SCATEData")

## End(Not run)

