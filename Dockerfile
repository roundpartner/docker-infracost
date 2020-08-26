FROM alpine

RUN apk add curl \
 && curl --silent --location "https://github.com/aliscott/infracost/releases/latest/download/infracost-$(uname -s)-amd64.tar.gz" | tar xz -C /tmp \
 && mv /tmp/infracost-$(uname -s | tr '[:upper:]' '[:lower:]')-amd64 /bin/infracost

CMD ["infracost"]