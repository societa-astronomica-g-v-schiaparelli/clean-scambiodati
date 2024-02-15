# clean-scambiodati

Simple *Dockerfile*, based on Alpine Linux and the find command, to periodically remove the old files from a directory, based on the `mtime` property.

## Usage

Install the latest version of [Docker Engine](https://docs.docker.com/engine/install/).

### Build

Build with:

```bash
docker build -t clean-scambiodati .
```

### Run

Assuming that the data directory is `/media/scambio_dati`, run with:

```bash
docker run --rm -v /media/scambio_dati:/data clean-scambiodati
```

This command is meant to be run daily.

### Systemd timer

This command can be daily run using the systemd timer `run-clean-scambiodati.timer` and the
corresponding service `run-clean-scambiodati.service`. Edit them accordingly, then run

```bash
cp run-clean-scambiodati.* /etc/systemd/system
systemctl daemon-reload
systemctl --now enable run-clean-scambiodati.timer
```
