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
 
#### barplot
barplot(x)
barplot(sort(geneVar))
barplot(geneVar[1:5])

##boxplot
boxplot(as.numeric(subExper[1, ]))
##two box plots in one frame
b1 <- as.numeric(subExper[1, ])
b2 <- as.numeric(subExper[50, ])
names(b1) <- rownames(subExper)[1]
names(b2) <- rownames(subExper)[50]
boxplot(b1, b2, xlab="Genes", ylab="log10 of expression",
        names=rownames(subExper)[c(1, 50)])

## violin plots
g1 <- subExper[1, 1:500] ##1*500
g2 <- subExper[2, 1:500] ##1*500
gt1 <- t(g1) ##500*1
gt2 <- t(g2) ##5001
g12 <- rbind(gt1, gt2)
longTable <- data.frame(cbind(g12, genes=rep(c("ACTB", "ACTG1"), each=500)))
longTable[, "ACTB__chr7"] <- as.numeric(longTable[, "ACTB__chr7"])
class(longTable[, "ACTB__chr7"])
ggplot(longTable, aes(x=genes, y=ACTB__chr7, fill=genes))+
  geom_violin()+ylab("Expression")+ggtitle("violin plots for expression of ACTB and ACTG1 ")

## Q: plot the violin plot of genes CD24__chrY, ANXA2__chr15, TTR__chr18, and
## TM4SF4__chr3TM4SF4__chr3, for thee first 1,000 cells
##
