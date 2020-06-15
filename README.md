# ansible-docker
该镜像通过Huginn监视https://github.com/ansible/ansible/releases.atom 自动触发构建

典型使用方法，使用 ```docker-compose.yml```
``` docker-compose.yml
version: '2'
services:
  ansible:
    image: 'jasongwq/ansible'
    container_name: ansible
    volumes:
      - '/home/docker_data/ansible/root/:/root/'
      - '/etc/localtime:/etc/localtime'
```
