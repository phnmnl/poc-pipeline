FROM r-base
MAINTAINER Stephanie Herman, stephanie.herman.3820@student.uu.se

RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.rstudio.com'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages('xcms')"

ADD peak-alignment.r /
ENTRYPOINT ["Rscript", "peak-alignment.r"] 
