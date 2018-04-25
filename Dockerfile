FROM alpine

RUN \
  apk update && \
  apk add bash py-pip && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make && \
  pip install azure-cli && \
  rm -rf ~/.cache/pip && \
  apk del --purge build 

ENTRYPOINT ["az"]
