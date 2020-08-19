FROM openjdk:8-jre
ADD target/microservices-demo-2.0.0.RELEASE.jar app.jar
RUN wget https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent-all.jar
EXPOSE 1111
EXPOSE 2222
EXPOSE 3333
# ENTRYPOINT ["java","-jar","/app.jar","accounts"]
