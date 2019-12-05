# Kali

Kali Linux as a docker container.

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
