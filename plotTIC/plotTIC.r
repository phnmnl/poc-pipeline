args <- commandArgs(trailingOnly = TRUE)

input = args[1]

load(input)

# Plot to identify outliers
pdf("outliers.pdf")
par(mfrow=c(1,2))
boxplot(TIC, ylab="Extracted peaks area")
hist(TIC, breaks=100, main="", xlab="Extracted peaks area")
dev.off() 
