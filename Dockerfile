FROM nimmis/java:openjdk-8-jdk
MAINTAINER MarVin <marvin1994pl@gmail.com>
RUN apt-get update && apt-get clean all

ADD    start.sh /start.sh
ADD    server.properties /server.properties
ADD    http://tcpr.ca/files/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar /spigot.jar #1.7.10
#ADD    http://tcpr.ca/files/spigot/spigot-1.8.7-R0.1-SNAPSHOT-latest.jar /spigot.jar #1.8.7

RUN     export TZ=Europe/Warsaw

RUN     chmod +x /start.sh

EXPOSE 25565
EXPOSE 25565/udp
EXPOSE 25575
VOLUME ["/data"]
CMD    ["/start.sh"]
