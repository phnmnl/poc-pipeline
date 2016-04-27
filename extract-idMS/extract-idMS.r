#######################
####### MODULE 2 ######
### QUALITY CONTROL ###
#######################

args <- commandArgs(trailingOnly = TRUE)

xset5 = args[1]
output = args[2]

load(xset5)

### 0. Here idMS are separated from idMS/MS, only idMS are kept for future analysis ###
# Save only idMS samples (they end with '01')
d_cdf1 <- xset5[,substr(colnames(xset5),nchar(colnames(xset5))-1,nchar(colnames(xset5)))=="01"]

d_cdf1_n <- apply(d_cdf1,2,as.numeric)

save(d_cdf1_n,file=output) 
