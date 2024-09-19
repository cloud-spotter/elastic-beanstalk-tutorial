# 'FROM' - first instruction, telling which BASE IMAGE to use
# Here, use the official Python image with version 3.8 and Alpine Linux
# Alpine is a lightweight, minimal Linux distribution designed for security and simplicity
FROM python:3.8-alpine

# 'COPY' copies files from the host filesystem (your machine) to the image filesystem
# Here, copy the current directory contents into the container at /app within the image
COPY . /app

# Set the working directory inside the container for any subsequent
# RUN, CMD, ENTRYPOINT, COPY, or ADD instructions
WORKDIR /app

# 'RUN' runs a command during the build of the image
# Here, install dependencies from the requirements.txt file
RUN pip install -r requirements.txt

# Expose port 5000 to the outside world
EXPOSE 5000

# 'CMD' is the command which runs when the container is started
CMD python /app/application.py