####
# Docker file for creating a general R container
#
# A shared folder is created called /host
# this folder can be used to put the data and/or
# the script you want to call. Also scripts called 
# will be executed from this folder.
#
# build the container
# >> docker build -t R .
#
# run the service
# >> docker run -v $HOST_PATH/host:/host R $RSCRIPT
#
####

FROM r-base

MAINTAINER "Stephanie Herman" stephanie.herman@medsci.uu.se

RUN mkdir /host
RUN cd /host
WORKDIR /host

ENTRYPOINT ["Rscript"]
CMD ["--help"]
