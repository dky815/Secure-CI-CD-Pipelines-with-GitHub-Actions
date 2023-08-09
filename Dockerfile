FROM alpine:3.18.3

RUN  apk --no-cache add openjdk11 git

RUN \ 
    git clone https://github.com/dky815/Secure-CI-CD-Pipelines-with-GitHub-Actions.git && \
    cd Secure-CI-CD-Pipelines-with-GitHub-Actions && \
    ./mvnw clean package

WORKDIR /Secure-CI-CD-Pipelines-with-GitHub-Actions

CMD ["./mvnw","cargo:run","-P tomcat90"]

EXPOSE 8080