# Use the official Mosquitto Docker image
FROM eclipse-mosquitto:latest

# Copy the custom configuration file into the Docker container
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose the MQTT default port
EXPOSE 1883

# Run the Mosquitto broker
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
