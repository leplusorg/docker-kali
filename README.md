# Kali

Kali Linux as a docker container.

![Docker Stars](https://img.shields.io/docker/stars/thomasleplus/kali.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/thomasleplus/kali.svg)
![Docker Automated](https://img.shields.io/docker/automated/thomasleplus/kali.svg)
![Docker Build](https://img.shields.io/docker/build/thomasleplus/kali.svg)

### Mac/Linux

```
docker run -t --user="$(id -u):$(id -g)" -v "$(pwd):/tmp" thomasleplus/kali
```

Add the `--rm` option if you want to discard the container when you exit it.

### Windows

In `cmd`:

```
docker run -t -v "%cd%:/tmp" thomasleplus/kali
```

In PowerShell:

```
docker run --rm -t -v "${PWD}:/tmp" thomasleplus/kali
```

Add the `--rm` option if you want to discard the container when you exit it.

## Request new tool

Please use [this link](https://github.com/thomasleplus/docker-kali/issues/new?assignees=thomasleplus&labels=enhancement&template=feature_request.md&title=%5BFEAT%5D) (GitHub account required) to request that a new tool be added to the image. I am always interested in adding new capabilities to these images.
