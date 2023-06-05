FROM ubuntu:latest

# Identify the maintainer of an image
LABEL version ="1.0.0"
LABEL maintainer="gsorokosz@gmail.com"

#Update the image to the latest images
RUN apt-get update
RUN apt-get upgrade -y

#Install NGINX to test
RUN apt-get install nginx -y 

# Expose port 80
EXPOSE 80

# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]
