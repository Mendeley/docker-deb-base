FROM mendeley/minimal-java:latest

MAINTAINER Chris Kilding <chris.kilding@mendeley.com>

# Add the compiled output of the build
# NOTE: the COPY command will create /usr/src/app if any or all of those directories
# do not exist yet.
ONBUILD COPY target/*-jar-with-dependencies.jar /usr/src/app/jar-with-dependencies.jar

# The child app will define a CMD; we cannot predict this ahead of time.
# But it might look something like
# CMD ["java", "-jar", "/usr/src/app/jar-with-dependencies.jar", "some args..."]
