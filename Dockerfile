FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get install -y git tk-dev tcl-dev

# Clone OOMMF repository.
WORKDIR /usr/local
RUN git clone http://github.com/fangohr/oommf.git

# Clone OOMMF extension repository.
# RUN git clone http://github.com/joommf/oommf-extension-dmi-cnv.git

# Copy OOMMF extension to OOMMF directory.
# COPY src/* oommf/oommf/app/oxs/local/

# COPY Makefile etc into image
COPY . oommf-extension-dmi-cnv/

# COPY example files
#RUN mkdir examples
#COPY examples/* examples/

# Compile OOMMF.
WORKDIR /usr/local/oommf
RUN make

# Create OOMMFTCL environment variable
ENV OOMMFTCL /usr/local/oommf/oommf/oommf.tcl

# Change working directory.
WORKDIR /usr/local/oommf-extension-dmi-cnv
