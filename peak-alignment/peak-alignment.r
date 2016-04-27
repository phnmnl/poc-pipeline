args <- commandArgs(trailingOnly = TRUE)

xset = args[1]
output = args[2]

load(xset)

### 2.Peaks alignment ###
xset2 <- retcor(xset,  method="obiwarp",plottype="deviation") 

save(xset2,file=output) 
