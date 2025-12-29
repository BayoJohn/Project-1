FROM nginx:alpine

# Install curl so the healthcheck works
RUN apk add --no-cache curl

# Copy your site files
COPY . /usr/share/nginx/html/

# The Healthcheck
HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD curl -f http://localhost/ || exit 1