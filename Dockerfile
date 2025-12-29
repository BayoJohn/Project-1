FROM nginx:alpine
# Copy everything from your current folder into the container
COPY . /usr/share/nginx/html/