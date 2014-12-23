# Explicitly latest, since when baseimage upgrades, all images are upgraded
FROM link0/baseimage:latest
MAINTAINER Dennis de Greef <github@link0.net>

# Define volumes
VOLUME [ "/app" ]

# Install docker and git
RUN apt-get -y install docker.io git

# Install scripts into /app
ADD app /app

# Execute docker-release
ENTRYPOINT [ "/app/docker-release" ]
