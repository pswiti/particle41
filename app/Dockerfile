# Use an official Python runtime as the base image
FROM python:3.9

# Create a non-root user to run the application
RUN useradd -m appuser

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory content into the container at /app
COPY --chown=appuser:appuser . /app

#Switch to the non-root user
USER appuser

# Install Flask inside the container
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
