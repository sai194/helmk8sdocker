FROM alpine as java
RUN apk --no-cache add openjdk11 maven
WORKDIR /usr/src/app
COPY . /usr/src/app/
RUN mv demo*.jar app.jar
ARG runtime_user=rcs-test
ARG runtime_uid=100000127
CMD [ "java", "-jar", "app.jar"]
