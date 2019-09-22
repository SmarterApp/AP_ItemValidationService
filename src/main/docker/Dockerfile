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

COPY cpt3.4.1.tar.gz /

RUN tar xf cpt3.4.1.tar.gz
RUN rm cpt3.4.1.tar.gz
RUN mv ./publish ./cpt

RUN apt-get update
RUN apt-get -y install curl libunwind8 gettext apt-transport-https

ENV MAX_HEAP_SIZE -Xmx384m

CMD java $MAX_HEAP_SIZE $JAVA_OPTS -jar ap-ivs.jar