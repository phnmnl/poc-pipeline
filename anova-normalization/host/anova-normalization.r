args <- commandArgs(trailingOnly = TRUE)

key = args[1]
phenotypes = args[2]
d_cdf1_n2 = args[3]
output = args[4]


############################
### 1. IMPORT PHENOTYPES ###
############################

#library(foreign)
## Sample level
p <- read.csv(key, stringsAsFactors=F)
## Individual level
p_i <- read.dta(phenotype)

## Merge
pp <- merge(p,p_i,by.x="ID",by.y="id")

## ANOVA-TYPE NORMALIZATION ##

p_s <- pp[pp$filename2 %in% colnames(d_cdf1_n2),]
p_o <- p_s[order(match(p_s$filename2,colnames(d_cdf1_n2))),]

lmres <- function(x){
mod <- lm(as.numeric(x)~1+as.factor(p_o$date) + as.factor(p_o$season) + as.numeric(p_o$storage) + as.numeric(p_o$rmsd.x), na.action=na.exclude)
return(resid(mod)+mod$coeff[1])}
d2_cdf1 <- t(sapply(data.frame(t(d_cdf1_n2)),lmres))
colnames(d2_cdf1) <- colnames(d_cdf1_n2)

## Save data ##

write.table(d2_cdf1,file=output,sep='\t',row.names=F)
