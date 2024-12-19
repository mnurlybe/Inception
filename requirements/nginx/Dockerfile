
# this is a base image for a container
FROM alpine:3.19 

# update the package list in Alpine Linux
# && upgrade all installed packages to their latest vervions
# && install nginx without caching the package files -> smaller container size
RUN apk update && apk upgrade && apk add --no-cache nginx

RUN mkdir -p /var/www/
RUN echo "<!DOCTYPE html><html><body><h1>Welcome to Nginx!</h1></body></html>" > /var/www/index.html
# COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# this is the command that will run when container starts
# nginx -> the web server program
# -g, daemon off -> run in foregroud, so it doesn't exit abruptly
CMD ["nginx", "-g", "daemon off;"]
