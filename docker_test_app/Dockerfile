# https://docs.docker.com/get-started/part2/#apppy
# Use an official Python runtime as a parent image
# docker run -p 4000:80 friendlyhello
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

RUN apt-get update && apt-get install -y iputils-ping net-tools
CMD ping -c 46 8.8.8.8

# Run app.py when the container launches
# CMD ["python", "app.py"]
