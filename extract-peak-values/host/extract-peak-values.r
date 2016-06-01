args <- commandArgs(trailingOnly = TRUE)

xset4 = args[1]

load(xset4)

library(xcms)
# Get features x samples matrix
xset5 <- groupval(xset4, value="into")
rownames(xset5) <- groupnames(xset4,mzdec=3, rtdec=3)

write.table(xset5, file = "metabo_final_pivus_small.txt", sep="\t", quote=F, row.names=T, col.names=T, append=F, na="NA") 
