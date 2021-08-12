FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

# Install the application requirements
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Copying the application code from local machine to docker image
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Creating a new user
RUN adduser -D sysadmin
USER sysadmin