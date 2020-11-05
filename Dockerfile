FROM ubuntu

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -yq \
    vim tmux less strace gnupg ca-certificates awscli nginx \
    socat curl iptables iproute2 net-tools iputils-ping \
    conntrack traceroute mtr dnsutils tcpdump nmap \ 
    apt-transport-https  \
    && rm -rf /var/lib/apt/lists/*

#RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | \
#    apt-key add - && \
#    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | \
#    tee -a /etc/apt/sources.list.d/kubernetes.list && \
#    apt-get update && apt install -y kubectl

    

CMD ["sleep", "infinity"]