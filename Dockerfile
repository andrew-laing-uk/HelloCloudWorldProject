# Use a base image
FROM python:3.12.3

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
# Note: you can shrink the docker image size by disabling the cache.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app code into the container
COPY app.py .

# Expose the port your Flask app will run on
EXPOSE 5000/tcp

# Define the command to run your app
CMD ["python", "app.py"]

