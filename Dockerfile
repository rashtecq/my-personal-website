# Use the official NGINX image as the base image
FROM nginx:alpine
# Copy website files into the HTML directory of the container
#COPY . /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
COPY me.jpg /usr/share/nginx/html
# Expose port 80 for the web server
EXPOSE 80


