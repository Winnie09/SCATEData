## Each row of the metadata file represents a resource added to one of
## the 'Hubs'. This example creates a metadata.csv file for a single resource.
## In the case of multiple resources, the arguments below would be character
## vectors that produced multiple rows in the data.frame.

af <- list.files('/Users/wenpinhou/Dropbox/SCATE/package/SCATE_Anno/inst/extdata/example')
df <- lapply(af, function(f){
    data.frame(
    Title = paste0("example/", f),
    Description = "bam file for single-cell ATAC-seq data",
    BiocVersion = "3.11",
    Genome = "hg19",
    SourceType = "BAM",
    SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE65360",
    SourceVersion = "Jan 01 2019",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = "GEO",
    Maintainer = "Wenpin Hou <wp.hou3@gmail.com>",
    RDataClass = "NA",
    DispatchClass = "BamFile",
    ResourceName = paste0("example/", f), 
    RDataPath = paste0('SCATE_Anno/tree/master/inst/extdata/',f),
    Tags = 'bam',
    stringsAsFactors = F)
})
df1 <- do.call(rbind, df)
str(df1)

df2 <- data.frame(
    Title = 'hg19 annotation file',
    Description = "hg19 annotation file for SCATE",
    BiocVersion = "3.11",
    Genome = "hg19",
    SourceType = "RDS",
    SourceUrl = "https://github.com/zji90/SCATE/tree/master/inst/extdata",
    SourceVersion = "Jan 01 2019",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = "SCATE",
    Maintainer = "Wenpin Hou <wp.hou3@gmail.com>",
    RDataClass = "NA",
    DispatchClass = "Rds",
    ResourceName = "hg19.rds", 
    RDataPath = 'SCATE_Anno/tree/master/inst/extdata/hg19.rds',
    Tags = 'hg19:annotation',
    stringsAsFactors = F)

df3 <- data.frame(
    Title = 'mm10 annotation file',
    Description = "mm10 annotation file for SCATE",
    BiocVersion = "3.11",
    Genome = "mm10",
    SourceType = "RDS",
    SourceUrl = "https://github.com/zji90/SCATE/tree/master/inst/extdata",
    SourceVersion = "Jan 01 2019",
    Species = "Mus musculus",
    TaxonomyId = 10090,
    Coordinate_1_based = TRUE,
    DataProvider = "SCATE",
    Maintainer = "Wenpin Hou <wp.hou3@gmail.com>",
    RDataClass = "NA",
    DispatchClass = "Rds",
    ResourceName = "mm10.rds", 
    RDataPath = 'SCATE_Anno/tree/master/inst/extdata/mm10.rds',
    Tags = 'mm10:annotation',
    stringsAsFactors = F)

meta = rbind(df1, df2, df3)
## Not run: 
## Write the data out and put in the inst/extdata directory.
write.csv(meta, file="/Users/wenpinhou/Dropbox/SCATE/package/SCATE_Anno/inst/extdata/metadata.csv", row.names=FALSE)

## Test the validity of metadata.csv
# library(AnnotationHubData)
makeAnnotationHubMetadata("/Users/wenpinhou/Dropbox/SCATE/package/SCATE_Anno")

## End(Not run)

