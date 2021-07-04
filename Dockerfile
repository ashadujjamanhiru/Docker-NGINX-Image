NGINX Official Image Dockerfile

FROM nginx:latest
CMD ["nginx", "-g", "daemon off;"]


Adding Custom HTML with NGINX Official Image Dockerfile

FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
