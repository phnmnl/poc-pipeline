args <- commandArgs(trailingOnly = TRUE)

xset4 = args[1]
output = args[2]

load(xset4)

library(xcms)
# Get features x samples matrix
xset5 <- groupval(xset4, value="into")
rownames(xset5) <- groupnames(xset4,mzdec=3, rtdec=3)


save(xset5,file=output) 
