# docker-jar-app-base

Production-style service images created by copying the fatjar package of that service.

This more closely tracks the setup we have today, where barebones production servers get a JVM installed and then obtain the fatjar to run as a service.

This is in contrast to [docker-maven-base](https://github.com/Mendeley/docker-maven-base), which can build a service image from scratch using merely its Git source.
