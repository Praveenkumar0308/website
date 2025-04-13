# Use the specified base image
FROM hshar/webapp

# Set working directory to the required path
WORKDIR /var/www/html

# Remove any existing files (if needed)
RUN rm -rf /var/www/html/*

# Copy your index.html file
COPY index.html .

# Set appropriate permissions (adjust as needed)
RUN chmod 644 index.html

# The base image likely already exposes a port and has a CMD
# If you need to customize, uncomment and modify below:
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
