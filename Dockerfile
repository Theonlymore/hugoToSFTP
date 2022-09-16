FROM alpine:3.13


RUN apk add --no-cache openssh
RUN apk add --no-cache python3
RUN apk add --no-cache py3-pip
RUN apk add --no-cache gzip

RUN apk add --no-cache curl
RUN apk add --no-cache jq
RUN apk add --no-cache tar

RUN apk add build-base
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

