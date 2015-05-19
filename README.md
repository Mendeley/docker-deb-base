# docker-deb-base

Production-style service images created by installing the deb package of that service.

This more closely mirrors the setup we have today, where Jenkins compiles debs using Lax, and barebones production servers install the packaged Java services from the deb packages.

This is in contrast to docker-maven-base, which can build a service image from scratch using merely its Git source.
