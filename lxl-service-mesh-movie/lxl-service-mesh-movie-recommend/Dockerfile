FROM openjdk:8-jdk-alpine
COPY ./itcast-service-mesh-movie-recommend-1.0-SNAPSHOT.jar /movie/itcast-service-mesh-movie-recommend-1.0-SNAPSHOT.jar
EXPOSE 18083

ENTRYPOINT [ "java","-jar","/movie/itcast-service-mesh-movie-recommend-1.0-SNAPSHOT.jar" ]