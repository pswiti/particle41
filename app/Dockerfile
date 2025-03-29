# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set environment variables to avoid writing .pyc files and to set the Python unbuffered mode
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# Create a non-root user to run the application
RUN useradd --create-home --shell /bin/bash appuser

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory content into the container at /app
COPY . /app/

# Install Flask inside the container
RUN pip install --no-cache-dir -r requirements.txt

# Change ownership of the app folder to the non-root user
RUN chown -R appuser:appuser /app

# Switch to the non-root user
USER appuser

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
