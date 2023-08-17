library(matrixStats)
library(pheatmap)
csvPath <- file.path("/Users/kazempour/proj/pre-mat/data/2023/GSE85241_cellsystems_dataset_4donors_updated.csv")
exper <- read.delim(csvPath)
x = c(1, 2,3 , 4)
experLog <- log10(exper+1) ##normalize data to be in the same range
mat <- as.matrix(experLog) ##rowVars() only accepts matrix class
geneVar <- rowVars(mat) ##calculate variance of each gene
print(length(geneVar))
print(geneVar[1:10])
print(summary(geneVar))
### threshold
threshold <- 0.4
highVars <- geneVar > threshold ##logical
highInd <- which(highVars)
print(length(highInd))
###plot, heatmap
nameS <- names(highInd)
subExper <- experLog[nameS, ] ##54*3072
png(filename="/Users/kazempour/proj/pre-mat/result/highVar_heatmap.png", height=4*480, width = 4*480)
p1=pheatmap(subExper, show_colnames = FALSE, cluster_cols =FALSE)
p1
dev.off()

