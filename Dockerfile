# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy all files from the current directory to /app in the container
COPY . /app

# Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Expose a port (optional — only if your script runs a web app like Flask)
EXPOSE 5000

# Command to run your Python script
CMD ["python", "helloworld.py"]
