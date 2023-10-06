otu <- read.table("Bacteria.txt",header=T,row.names=1)
otu <- data.frame(otu)
otu <- cbind(otu, rowSums(otu))
last_column_sum <- sum(otu[, "rowSums(otu)"])
percentage <- (otu[, "rowSums(otu)"]/last_column_sum)*100
otu <- cbind(otu, Percentage=percentage)
abundant <- otu[otu[, ncol(otu)]>0.1,]
rare <- otu[otu[,ncol(otu)]< 0.01,]
intermediate <-otu[otu[,ncol(otu)]>= 0.01 & otu[, ncol(otu)]<=0.1,]

                   