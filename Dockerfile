# Python base image
FROM python:3.12

# Set working directory
WORKDIR /src

# Copy everything
COPY . . 

# Pip install packages
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME ML_World

# Run command
CMD ["python", "main.py"]