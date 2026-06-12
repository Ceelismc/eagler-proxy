FROM nginx:alpine

# 1. Delete the default configuration file that causes the 404
RUN rm /etc/nginx/conf.d/default.conf

# 2. Copy your custom configuration file over
COPY nginx.conf /etc/nginx/nginx.conf

# 3. Expose Render's port
EXPOSE 10000

# 4. Force NGINX to stay in the foreground
CMD ["nginx", "-g", "daemon off;"]
