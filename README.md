# Kali

Kali Linux as a docker container.

### Mac/Linux

```
$ docker run --rm -it --user="$(id -u):$(id -g)" -v "$(pwd):/tmp" thomasleplus/kali
```

### Windows

In `cmd`:

```
$ docker run --rm -it -v "%cd%:/tmp" thomasleplus/kali
```

In PowerShell:

```
$ docker run --rm -it -v "${PWD}:/tmp" thomasleplus/kali
```
