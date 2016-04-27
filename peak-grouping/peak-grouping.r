args <- commandArgs(trailingOnly = TRUE)

xset2 = args[1]
output = args[2]

load(xset2)

### 3. Peaks grouping ###
# Group retention-time-corrected peaks and print plots for visual inspection of grouping quality in 'grouping.pdf'
pdf("grouping.pdf")
xset3 <- group(xset2, bw=2, minfrac=0.03, max= 100, mzwid=0.01, sleep=0.0001)
dev.off() 

save(xset3,file=output) 
