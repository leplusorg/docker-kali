# Kali

Kali Linux as a docker container.

[![Docker Build](https://github.com/leplusorg/docker-kali/workflows/Docker/badge.svg)](https://github.com/leplusorg/docker-kali/actions?query=workflow:"Docker")
[![Docker Stars](https://img.shields.io/docker/stars/leplusorg/kali)](https://hub.docker.com/r/leplusorg/kali)
[![Docker Pulls](https://img.shields.io/docker/pulls/leplusorg/kali)](https://hub.docker.com/r/leplusorg/kali)
[![Docker Version](https://img.shields.io/docker/v/leplusorg/kali?sort=semver)](https://hub.docker.com/r/leplusorg/kali)

**Mac/Linux**

```bash
docker run -t --user="$(id -u):$(id -g)" -v "$(pwd):/tmp" leplusorg/kali
```

Add the `--rm` option if you want to discard the container when you exit it.

**Windows**

In `cmd`:

```batch
docker run -t -v "%cd%:/tmp" leplusorg/kali
```

In PowerShell:

```pwsh
docker run --rm -t -v "${PWD}:/tmp" leplusorg/kali
```

Add the `--rm` option if you want to discard the container when you exit it.

## Request new tool

Please use [this link](https://github.com/leplusorg/docker-kali/issues/new?assignees=thomasleplus&labels=enhancement&template=feature_request.md&title=%5BFEAT%5D) (GitHub account required) to request that a new tool be added to the image. I am always interested in adding new capabilities to these images.
