FROM centos:7.6.1810

RUN yum -y install  epel-release \
    && yum -y makecache \
    && yum -y install ansible openssh-clients vim \ 
    && yum -y clean all \
    && rm -rf /var/cache/yum/*
CMD ["/usr/sbin/init"]

