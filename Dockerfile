FROM python:3.10.6-slim-buster

# Install required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3-pip \
    ffmpeg

# Set working directory
WORKDIR /File-Store

# Copy Python dependencies file and install
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

# Copy start script
COPY start.sh /start.sh

# Set start script as executable
RUN chmod +x /start.sh

# Set start script as the entrypoint
ENTRYPOINT ["/bin/bash", "/start.sh"]