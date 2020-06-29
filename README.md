# SCATEData

## Summary

The `SCATEData` is an extensive data resources containing the location of genomic regions bins, the mean and standard deviation of normalized bulk DNase-seq signals across ENCODE samples, and the clustering of the genomic bins based on bulk DNase-seq signals. These data have been formatted as `GenomicRanges` Bioconductor objects and hosted on Bioconductor's `ExperimentHub` platform. 

`SCATEData` provides data resources for the package `SCATE` to  extract and enhance the sparse and discrete Single-cell ATAC-seq Signal. 

For more details, see our paper describing the `SCATE` package:

- [Zhicheng Ji, Weiqiang Zhou, Hongkai Ji (2019), *Single-cell ATAC-seq Signal Extraction and Enhancement with SCATE*, bioRxiv, v1.](https://www.biorxiv.org/content/10.1101/795609v1)



## Vignettes

Additional details are provided in the following vignettes, available from the [Bioconductor](http://bioconductor.org/packages/SCATEData) website:

- [SCATEData package](https://github.com/Winnie09/SCATEData): Overview of the package and example showing how to load the datasets
- [Examples and use cases](https://github.com/Winnie09/SCATEData): Examples and use cases

For details on the datasets, see the manual page by typing `??SCATEData` for each dataset available within the package, or the metadata from the `ExperimentHub` database (see "SCATEData package" vignette).


## Availability and installation

The `SCATEData` package is freely available from [Bioconductor](http://bioconductor.org/packages/SCATEData), and can be installed by following standard Bioconductor package installation procedures:

```{r}
# install BiocManager (if not already installed)
install.packages("BiocManager")

# install HDCytoData package
BiocManager::install("SCATEData")
```

## Issues 
Please open an issue in this repository if you have any questions or need any assistance regarding this package. 

## Citation

Please cite the following paper:

- [Zhicheng Ji, Weiqiang Zhou, Hongkai Ji (2019), *Single-cell ATAC-seq Signal Extraction and Enhancement with SCATE*, bioRxiv, v1.](https://www.biorxiv.org/content/10.1101/795609v1)


