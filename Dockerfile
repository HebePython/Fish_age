FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY src/app/ .
COPY tests/ .

# Install any dependencies (if you have a requirements.txt, uncomment the next line)
RUN pip install --no-cache-dir pytest

# Command to run the application
CMD ["python", "main.py"]