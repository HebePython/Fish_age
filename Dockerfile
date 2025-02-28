FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY src/app/ .
COPY tests/ .

# Install pytest directly using pip
RUN pip install --no-cache-dir pytest

# Verify pytest installation
RUN python -m pytest --version

# Command to run the application
CMD ["python", "main.py"]