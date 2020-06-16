FROM gcr.io/kaniko-project/executor:latest AS kaniko

FROM debian:10.3-slim

COPY --from=kaniko /kaniko/ /kaniko/

RUN apt-get -y update
RUN apt-get -y install curl
RUN curl https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh -o gitlab-runner.deb.sh
RUN chmod +x gitlab-runner.deb.sh
RUN ./gitlab-runner.deb.sh
RUN apt-get -y install gitlab-runner

ENV SSL_CERT_DIR=/kaniko/ssl/certs
ENV DOCKER_CONFIG=/kaniko/.docker/

ENTRYPOINT gitlab-runner run
