# Docker Engine Install on CentOS-8

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

    sudo yum install -y docker-ce docker-ce-cli containerd.io

**Start Docker Service**

    systemctl enable docker && systemctl start docker
   
**Check Docker Service**

    service docker status

**Check Docker Version**

    docker version

**Check Docker Container running**

    docker ps  
    
**Check Docker Container all** 
          
    docker ps -a

**Use the Official NGINX Docker Image**

    FROM nginx:latest
    CMD ["nginx", "-g", "daemon off;"]

**Docker Container Build**

    docker build -t webnginx .

**Docker Container run**

    docker run -it -p 8080:80 --name web webnginx
    
**Start Docker Container**

    docker start web

**Open your favorite browser and navigate to http://localhost:8080   You should see the following NGINX welcome page**

    http://localhost:8080

**Adding Custom HTML** **Stop Docker Container**

    docker stop web
          
**By default, Nginx looks in the /usr/share/nginx/html directory inside of the container for files to serve. We need to get our html files into this directory. A fairly simple way to do this is use a mounted volume. With mounted volumes, we are able to link a directory on our local machine and map that directory into our running container.
Let’s create a custom html page and then serve that using the nginx image. index.html**

          <!doctype html>
          <html lang="en">
          <head>
          <meta charset="utf-8">
          <title>Docker Nginx</title>
          </head>
          <body>
          <h2>Hello from Nginx container</h2>
          </body>
          </html>

**Now Edit Dockerfile or Create New Dockerfile**

    FROM nginx:latest
    COPY ./index.html /usr/share/nginx/html/index.html
    CMD ["nginx", "-g", "daemon off;"]
 
**Again Docker Build and run**

    docker build -t webnginx .
    docker run -it -p 8080:80 --name web webnginx

**Again Check (Open your favorite browser and navigate to http://localhost:8080   You should see the following NGINX welcome page)**

    http://localhost:8080
