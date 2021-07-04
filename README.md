**Docker Engine Install on CentOS-8**

**Step1: IF install old Docker engine first Uninstall old versions**

          sudo yum remove docker \

                   docker-client \
                   
                   docker-client-latest \
                   
                   docker-common \
                   
                   docker-latest \
                   
                   docker-latest-logrotate \
                   
                   docker-logrotate \
                   
                   docker-engine

**Step2: Installation methods**

   **1. Install using the repository**

          sudo yum install -y yum-utils

          sudo yum-config-manager \
              --add-repo \
              https://download.docker.com/linux/centos/docker-ce.repo

**Install Docker Engine**
**Install the latest version of Docker Engine and containerd**

          sudo yum install docker-ce docker-ce-cli containerd.io

**Check Docker Service**

          service docker status


**Start Docker**

          sudo systemctl start docker

**Check Docker Container **

          docker ps  
          docker ps -a

**Use the Official NGINX Docker Image**

          FROM nginx:latest
          CMD ["nginx", "-g", "daemon off;"]

**Docker Build and run**

          docker build -t webnginx .
          docker run -it --rm -d -p 8080:80 --name web webnginx

**Open your favorite browser and navigate to http://localhost:8080   You should see the following NGINX welcome page.**

          http://localhost:8080

**Adding Custom HTML**

          docker stop web


