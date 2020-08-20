# Jaeger and OpenTelemetry end-to-end distributed tracing demo

This Demo Includes

Simple distributed microservice application  (based on https://github.com/paulc4/microservices-demo), and OpenTelemetry Java agent to collect traces and send it to the Jaeger.

![Demo System Schematic](mini-system.jpg)

### Procedure

To run this demo, open a Linux terminal or Windows PowerShell and run these commands:

1. Build the application:

    `docker run -it --rm --name my-maven-project -v "$(pwd):/usr/src/mymaven" -w "/usr/src/mymaven" maven:3.3-jdk-8 mvn clean package`

2. Build Docker image: 

   `docker build -f opentelemetry.dockerfile -t erivelto1976/microservice-opentelemetry .` 

3. Run docker-compose up:  

   `docker-compose up` or `sudo docker-compose up`

4. In your browser, go to http://localhost:3333. This is the microservice demo web interface. Browse these URLs:

   http://localhost:3333/accounts/123456789

   http://localhost:3333/accounts/owner/Keri

   http://localhost:3333/accounts/search (Enter an invalid account 987654321 to force an error)

5. In a second browser tab, go to  http://localhost:16686. This is Jaeger UI to view the traces:

![Jaeger UI](jaeger-ui-2.jpg)

![Jaeger UI](jaeger-ui.jpg)