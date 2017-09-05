#
# The app runs on port 8080 unless configured
# otherwise.
#
# The app can be enabled to pull its
# configuration from a Spring Cloud Config-Server.
#
FROM openjdk:8

MAINTAINER Smarter Balanced "opentestsystem.org"

VOLUME ["/tmp"]

COPY ap-ivs.jar /

ADD https://github.com/SmarterApp/TabulateSmarterTestContentPackage/releases/download/2.1.0/cpt2.1.0.tar.gz /
RUN tar xf cpt2.1.0.tar.gz
RUN rm cpt2.1.0.tar.gz
RUN mv ./publish ./cpt

RUN apt-get update
RUN apt-get -y install curl libunwind8 gettext apt-transport-https

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "/ap-ivs.jar"]