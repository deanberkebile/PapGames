FROM nginx:alpine

# Remove default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy game menu
COPY index.html /usr/share/nginx/html/index.html

# Copy all game files
COPY games/ /usr/share/nginx/html/games/

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
