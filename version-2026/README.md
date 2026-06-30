# version 2026

## build 

```sh
docker build -t custom-grype:latest .
```

## scan example

```sh
docker run --name grype-scan --rm -v /home/user/folder:/home -it custom-grpe:latest
```

```sh
grype folder
```
