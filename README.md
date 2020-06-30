# ansible-docker
该镜像通过Huginn监视https://github.com/ansible/ansible/releases.atom 自动触发构建

典型使用方法，使用 ```docker-compose.yml```
``` docker-compose.yml
version: '2'
services:
  ansible:
    image: 'jasongwq/ansible'
    container_name: ansible
    working_dir: /root/
    volumes:
      - '/home/docker_data/ansible/root/:/root/'
      - '/home/docker_data/ansible/etc/:/etc/ansible/'
      - '/etc/localtime:/etc/localtime'
```

首次使用:

进入docker中

docker exec -it ansible bash

使用ssh-keygen生成密钥,对私钥设置密码

后续:

通过以下命令进入docker中，每次进入前需要输入之前设置的密码

docker exec -it ansible ssh-agent bash
