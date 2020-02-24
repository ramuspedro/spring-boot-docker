FROM debian

RUN set -eux; \
        apt-get update; \
        apt install -y --no-install-recommends \
                    default-jre \
                    default-jdk

EXPOSE 8001