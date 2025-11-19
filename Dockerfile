FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && \
    apt-get install -y curl apt-transport-https ca-certificates gnupg lsb-release

# Install Docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
  && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" \
  && apt-get update \
  && apt-get install -y docker-ce docker-ce-cli containerd.io

