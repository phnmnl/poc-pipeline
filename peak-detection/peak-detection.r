args <- commandArgs(trailingOnly = TRUE)

path_to_raw_file = args[1]
output = args[2]

raw_pivus <-list.files(path_to_raw_file, pattern=".CDF", recursive = FALSE, full.names=TRUE)

### 1.Peaks detection ###
print("Peak detection")
xset<-xcmsSet(raw_pivus, method = "centWave", ppm=25 , peakwidth=c(2:15), snthresh=8, mzCenterFun="wMean", integrate=2, mzdiff=0.05 , prefilter=c(1,5))
## ! Use 'nSlaves' option to make this parallel. To use nSlaves you need to load library(Rmpi) ##

save(xset,file=output) 
