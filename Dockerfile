FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY src/app/ .
COPY tests/ .

# Install pip and pytest
RUN apt-get update && apt-get install -y curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip install --no-cache-dir pytest

# Verify pytest installation
RUN python3 -m pytest --version

# Command to run the application
CMD ["python3", "main.py"]