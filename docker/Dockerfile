FROM alpine:latest
WORKDIR /opt
# Update
RUN apk update
# Install cURL
RUN apk add curl
# Copy file
COPY helloworld.sh /opt/helloworld.sh
# Perform operation on file
RUN chmod +x helloworld.sh
# Command to be executed when container starts
CMD ["/opt/helloworld.sh"]
