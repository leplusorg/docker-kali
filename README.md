# Kali

Kali Linux as a docker container.

### Mac/Linux

```
docker run --rm -t --user="$(id -u):$(id -g)" -v "$(pwd):/tmp" thomasleplus/kali
```

### Windows

In `cmd`:

```
docker run --rm -t -v "%cd%:/tmp" thomasleplus/kali
```

In PowerShell:

```
docker run --rm -t -v "${PWD}:/tmp" thomasleplus/kali
```
