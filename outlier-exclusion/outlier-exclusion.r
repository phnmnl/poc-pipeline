args <- commandArgs(trailingOnly = TRUE)

XXXXX = args[1]
output = args[2]

# Where XXXXX is the TIC value for outliers exclusion
Ld_cdf1_n2 <- Ld_cdf1_n[,!(colnames(Ld_cdf1_n) %in% c(colnames(Ld_cdf1_n)[TIC<XXXXX]))]

save(Ld_cdf1_n2, file = output) 
