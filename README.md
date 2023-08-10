# Grype vulnerabilities scanner

## Base image alpine linux

```sh
docker build -t owenwilson/grype-tool-security:latest .
```

## Run grype from docker exec and generate the html report

```sh
docker run --rm \
--volume /var/run/docker.sock:/var/run/docker.sock \
--name Grype owenwilson/grype-tool-security:latest  \
$(ImageName):$(ImageTag)
```

```sh
docker exec -i grype-scanner ubuntu:22.04 -o template -t grype-report.tmpl > report.html
```

## Run grype from docker-compose exec and generate the html report

```sh
docker-compose -f grype.yml up -d
```

```sh
docker-compose -f grype.yml exec -T grype-scanner grype $(ImageName):$(ImageTag) -o template -t grype-report.tmpl > report.html
```

## DevOps
- [grype-tool](https://github.com/anchore/grype)
