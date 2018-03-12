FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get install -y git tk-dev tcl-dev

# Clone OOMMF repository.
WORKDIR /usr/local
RUN git clone http://github.com/fangohr/oommf.git

# Copy OOMMF extension repository.
COPY . /usr/local/oommf-extension-dmi-cnv/
WORKDIR /usr/local/oommf-extension-dmi-cnv/

# Copy OOMMF extension to OOMMF directory.
RUN cp src/* /usr/local/oommf/oommf/app/oxs/local/

# Compile OOMMF.
WORKDIR /usr/local/oommf
RUN make

# Create OOMMFTCL environment variable
ENV OOMMFTCL /usr/local/oommf/oommf/oommf.tcl

# Change working directory.
WORKDIR /usr/local/oommf-extension-dmi-cnv