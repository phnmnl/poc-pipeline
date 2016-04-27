args <- commandArgs(trailingOnly = TRUE)

xset3 = args[1]
output = args[2]

load(xset3)

### 4. Filling missing features ####
xset4 <- fillPeaks.chrom(xset3)

save(xset4,file=output) 
