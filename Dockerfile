FROM alpine:latest
WORKDIR /opt
# Update
RUN apk update
# Install cURL
RUN apk add curl
