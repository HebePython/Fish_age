FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY src/app/ .
COPY tests/ .

# Install pip using get-pip.py
RUN apt-get update && apt-get install -y curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py

# Install pytest
RUN pip install --no-cache-dir pytest

# Verify pytest installation
RUN python3 -m pytest --version

# Command to run the application
CMD ["python3", "main.py"]