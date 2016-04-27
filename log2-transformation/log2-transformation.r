args <- commandArgs(trailingOnly = TRUE)

d_cdf1_n = args[1]
output = args[2]
outputTIC = args[3]

load(d_cdf1_n)

### 1. Log2 transform ### 

# substitute 0 with min(d_cdf1), if intensity is 0, then it gets the lower possible value
d_cdf1_n[d_cdf1_n == 0] <- min(d_cdf1_n[d_cdf1_n != 0])
Ld_cdf1_n <- log2(d_cdf1_n)

### 2. Calculate total intesity for each sample and check for outlier ###

TIC<-colSums(Ld_cdf1_n, na.rm=T)
save(Ld_cdf1_n,TIC,file=output)
save(TIC,TIC,file=outputTIC) 
