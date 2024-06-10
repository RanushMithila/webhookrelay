# Use the official Webhook Relay Docker image as the base image
FROM webhookrelay/webhookrelayd:latest

# Create a non-root user and group with specific IDs (e.g., 1001)
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Switch to the non-root user
USER appuser

# Set environment variables
ENV RELAY_KEY=$RELAY_KEY \
    RELAY_SECRET=$RELAY_SECRET \
    BUCKETS=$BUCKETS \
    DESTINATION=$DESTINATION \
    TUNNELS=$TUNNELS \
    REGION=$REGION

# Default command to run the Webhook Relay agent
CMD ["webhookrelayd"]
