# Use a lightweight web server to serve the HTML
FROM nginx:alpine

# Copy the HTML file into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
