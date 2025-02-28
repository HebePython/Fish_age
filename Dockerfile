FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY src/app/ .
COPY tests/ .

# Install pip and pytest
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install --no-cache-dir pytest

# Verify pytest installation
RUN python3 -m pytest --version

# Command to run the application
CMD ["python", "main.py"]