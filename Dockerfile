FROM java:8u45-jdk

MAINTAINER Chris Kilding <chris.kilding@mendeley.com>

# Create a place in the container to put the app
RUN mkdir -p /usr/src/app

# Everything we do from now on is in the context of this folder
WORKDIR /usr/src/app

# Add the output of lax build
ONBUILD ADD debs/*.deb /usr/src/app/

# Workaround - use our special settings.xml in the container when running mvn commands
# Workaround - DO NOT run the integration tests as they will fail at image build stage
ONBUILD RUN dpkg -i *.deb

# The child app will define a CMD; we cannot predict this ahead of time.