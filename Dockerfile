FROM mongo:8.0.0-rc8-jammy

# Set the working directory inside the container
WORKDIR /data

# Copy the MongoDB configuration file into the container
COPY mongod.conf /etc/mongod.conf

# Expose the MongoDB port
EXPOSE 27017

USER mongodb

# Start MongoDB with the specified configuration file
CMD ["mongod", "--config", "/etc/mongod.conf"]
