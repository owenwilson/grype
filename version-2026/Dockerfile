FROM alpine:3.23.5
RUN apk update
RUN apk add curl
RUN curl -sSfL https://get.anchore.io/grype | sh -s -- -b /usr/local/bin
RUN apk add python3
CMD ["/bin/sh"]
