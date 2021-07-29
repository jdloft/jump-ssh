FROM alpine

RUN apk add --no-cache ssh

COPY proxy.sh /proxy.sh
ENTRYPOINT ["/proxy.sh"]
