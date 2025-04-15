# Use a fast base with devcontainer tooling baked in
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install required tools
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
 && rm -rf /var/lib/apt/lists/*

# Install MTC CLI
RUN curl -s https://app.morethancertified.com/install.sh | sh

# Set up shell defaults and aliases
RUN echo "\
alias terraform='tflocal'\n\
alias aws='awslocal'\n\
alias mtc-delete='gh cs delete -c \$CODESPACE_NAME'\n\
export AWS_DEFAULT_REGION='us-east-1'\n" >> /etc/bash.bashrc

# Start localstack automatically (in post-start)
