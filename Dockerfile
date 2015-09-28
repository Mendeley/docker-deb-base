FROM mendeley/minimal-java:latest

# Add the compiled output of the build
# NOTE: the COPY command will create /usr/src/app if any or all of those directories
# do not exist yet.
ONBUILD COPY target/*-jar-with-dependencies.jar /usr/src/app/jar-with-dependencies.jar

CMD ["java", "-jar", "/usr/src/app/jar-with-dependencies.jar", "mendeley-server", "-e", "development", "-L", "-f", "jar:file:/usr/src/app/jar-with-dependencies.jar!/application/env.yml"]
