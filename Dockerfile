FROM eclipse-temurin:11-jre

EXPOSE 8080

#COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
COPY ./build/libs/*.jar /usr/app/app.jar
WORKDIR /usr/app
CMD ["java", "-jar", "app.jar"]
#ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
