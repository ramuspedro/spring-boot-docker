FROM debian

RUN set -eux; \
        apt-get update; \
        apt install -y --no-install-recommends \
                    default-jre \
                    default-jdk \
                    maven \
                    git

RUN mkdir -p /app \
    && cd /app

WORKDIR /app

RUN git clone https://github.com/ramuspedro/spring-store

RUN cd /app/spring-store

WORKDIR /app/spring-store

RUN mvn package \
    && cp /app/spring-store/target/cursomc-0.0.1-SNAPSHOT.jar /app/spring-store/project.jar

EXPOSE 8001

ENTRYPOINT ["java", "-jar",  "project.jar"]