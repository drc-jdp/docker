FROM ubuntu:18.04

RUN useradd -m -s /bin/bash -d /home/ga ga
RUN echo ga:ga | chpasswd

WORKDIR /home/ga
RUN mkdir actions-runner
WORKDIR /home/ga/actions-runner

RUN apt-get update
RUN apt-get install -y --no-install-recommends curl
RUN apt-get install -y vim
RUN apt-get install -y ca-certificates
RUN apt-get -y install python3-pip

RUN curl -k -O -L https://github.com/actions/runner/releases/download/v2.273.0/actions-runner-linux-x64-2.273.0.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.273.0.tar.gz

RUN ./bin/installdependencies.sh
COPY http-server.py ../
COPY boot.sh /bin

RUN chown ga *
RUN chown ga .

RUN mkdir ../docker_images
WORKDIR /home/ga/docker_images
CMD ["/bin/bash", "/bin/boot.sh"]
