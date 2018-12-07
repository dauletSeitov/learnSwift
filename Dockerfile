#FROM openjdk:8-jre-alpine

FROM frolvlad/alpine-oraclejdk8:8.171.11-slim
WORKDIR /srv

ADD java_security/*.jar /usr/lib/jvm/java-8-oracle/jre/lib/ext/
ADD java_security/java.security /usr/lib/jvm/java-8-oracle/jre/lib/security

#ADD build/libs/vacman /srv/vacman
ADD build/libs/postgresql-42.1.1.jar /srv
ADD build/libs/ojdbc8.jar /srv
ADD build/libs/digitalbank-data-*.jar /srv
ADD build/libs/digitalbank-core-*.jar /srv
ADD build/libs/manager-front-*.jar /srv
ADD build/libs/integrator-vtb-*.jar /srv

ADD build/libs/application.yml /srv/application.yml
ADD build/libs/digitalbank.sh /srv

CMD ["sh", "digitalbank.sh"]
