FROM nginx:alpine

# Copy custom external nginx configuration
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copy static files
COPY nginx/index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
