# Use the official Webhook Relay Docker image as the base image
FROM webhookrelay/webhookrelayd:latest

# Set environment variables
ENV RELAY_KEY=$RELAY_KEY \
    RELAY_SECRET=$RELAY_SECRET \
    BUCKETS=$BUCKETS \
    DESTINATION=$DESTINATION \
    TUNNELS=$TUNNELS \
    REGION=$REGION

# Default command to run the Webhook Relay agent
CMD ["webhookrelayd"]
