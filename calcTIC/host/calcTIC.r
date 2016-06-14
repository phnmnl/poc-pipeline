args <- commandArgs(trailingOnly = TRUE)

input = args[1]
output = args[2]

d<-read.table(input,sep='\t',header=T)

TIC<-colSums(d, na.rm=T)

write.table(TIC,file=output,sep='\t',row.names=F)
