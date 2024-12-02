FROM debian:bullseye

LABEL authors = "Roy To <roy.to@itdogsoftware.co>"
# Add nodejs repo
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
RUN source ~/.bashrc
RUN nvm install 16

# Install library & necessary service
RUN apt-get update -y && apt-get install libnss3 procps libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm-dev libxkbcommon-x11-0 libasound2 -y && rm -rf /var/lib/apt/lists/*
