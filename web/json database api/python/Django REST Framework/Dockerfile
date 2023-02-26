# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.11-slim-buster

EXPOSE 8000

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install OS dependencies
RUN apt update -y
RUN apt install -y libpq-dev python3-dev build-essential
RUN apt-get -y autoremove

# Create and use a custom directory for application
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .
WORKDIR /usr/src/app/json_api

# Install pip requirements
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Creates a non-root user with an explicit UID and adds permission to access the /app folder
# For more info, please refer to https://aka.ms/vscode-docker-python-configure-containers
RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /usr/src/app
USER appuser

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["gunicorn", "-b", ":8000", "json_api.wsgi"]
