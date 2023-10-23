FROM nginx:latest
RUN apt-get update
RUN rm -rf /usr/share/nginx/html/*
ADD static-website-example-master/ /usr/share/nginx/html/
CMD ["nginx","-g","daemon off;"]
