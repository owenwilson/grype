FROM alpine:3.17
RUN apk add curl
RUN curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin
RUN apk add python3
RUN mkdir /var/www/
COPY ./grype-report.tmpl /var/www
WORKDIR /var/www
RUN echo "<h1>Grype is working</h1>" > index.html
CMD ["python3", "-m", "http.server"]
