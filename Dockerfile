# Use a lightweight web server image
FROM nginx:latest

# Remove the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio static files to nginx web root
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
