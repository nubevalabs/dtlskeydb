
FROM ubuntu:18.04
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y python wget
RUN apt install -y python-pip
RUN pip2 install Dtls flask
RUN apt install -y openssl1.0
RUN wget -O /opt/nubevaTools/dtlskeydb.py https://nubevalabs.s3.amazonaws.com/dtlskeydb/dtlskeydb.py
RUN wget -O /opt/nubevaTools/nubedge.ca https://nubevalabs.s3.amazonaws.com/dtlskeydb/nubedge.ca
RUN wget -O /opt/nubevaTools/nubedge.pem https://nubevalabs.s3.amazonaws.com/dtlskeydb/nubedge.pem
RUN wget -O /opt/nubevaTools/nubedge.key https://nubevalabs.s3.amazonaws.com/dtlskeydb/nubedge.key
CMD python /opt/nubevaTools/dtlskeydb.py
