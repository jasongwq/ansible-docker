FROM centos:7

RUN yum -y install  epel-release \
    && yum -y makecache \
    && yum -y install ansible openssh-clients vim git\ 
    && yum -y clean all \
    && rm -rf /var/cache/yum/*
RUN sed -i 's/#inventory.*/inventory      = ~\/hosts/' /etc/ansible/ansible.cfg \
    && sed -i 's/#host_key_checking.*/host_key_checking = False/' /etc/ansible/ansible.cfg
COPY rc.local /etc/rc.d/rc.local
CMD ["/usr/sbin/init"]

