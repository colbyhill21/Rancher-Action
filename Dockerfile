FROM debian:stable
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl wget gnupg apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl=1.15.2-00

RUN wget "https://releases.rancher.com/cli2/v2.2.0/rancher-linux-amd64-v2.2.0.tar.gz"
RUN tar -xvzf rancher-linux-amd64-v2.2.0.tar.gz
RUN cp rancher-v2.2.0/rancher /usr/local/bin/rancher
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
