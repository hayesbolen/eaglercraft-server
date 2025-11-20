FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install OpenJDK 17 and unzip/wget
RUN apt-get update && \
    apt-get install -y openjdk-17-jre-headless wget unzip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
