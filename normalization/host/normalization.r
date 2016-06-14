args <- commandArgs(trailingOnly = TRUE)

d = args[1]
output = args[2]

## Read data ##

# Get number of features
nnro <- system(paste("wc -l ",d, sep=""), intern=T)
nnro <- as.numeric(strsplit(nnro," ")[[1]][1])

system.time(d <- read.table(d,header=T, check.names=F, comment.char="", colClasses="character", nrows=nnro, sep="\t"))

#######################################
### 3. CDF 1 + CDF 2  NORMALIZATION ###
#######################################

# Numeric
d_n <-  apply(d,2,as.numeric)
# substitute 0 with min(d_cdf1)
d_n[d_n == 0] <- min(d_n[d_n != 0])


## Separate CDF1 ##

d_cdf1_n <- d_n[,substr(colnames(d_n),nchar(colnames(d_n))-1,nchar(colnames(d_n)))=="01"]

## Save data ##

save(d_cdf1_n,file=output)
