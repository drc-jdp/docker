FROM ubuntu:18.04

RUN useradd -m -s /bin/bash -d /home/ga ga
RUN echo ga:ga | chpasswd

WORKDIR /home/ga

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get -y install python3-pip

COPY http-server.py ../
COPY boot.sh /bin

RUN mkdir ../docker_images
WORKDIR /home/ga/docker_images
CMD ["/bin/bash", "/bin/boot.sh"]
