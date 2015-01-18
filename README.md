ArmA3 docker container
=====

Hull container for ArmA3 Server. It does not contain any data but serve as a hull for mounted volumes.

Setup
-----

```bash
docker pull blang/a3server
```
or build:
```bash
docker build -t blang/a3server .

```

Usage:
-----

All needed data is mounted via volumes.

Install arma3 server via [steamcmd](https://github.com/blang/steamcmd-docker):

```bash
docker run --rm -i --user="$(id -u):$(id -g)" -v /data/armaserver:/data blang/steamcmd +login <USERNAME> <PASSWORD> +force_install_dir /data +app_update 233780 validate +quit

```

Run a shell inside the container:

```bash
docker run -p 2302:2302 -p 2302:2302/udp -p 2303:2303 -p 2303:2303/udp -p 2304:2304 -p 2304:2304/udp -p 2305:2305 -p 2305:2305/udp -v /data/armaserver:/armaserver -v /data/mods:/mods -v /data/mpmissions:/mpmissions -i -t blang/a3server /bin/bash
```

License
-----

See [LICENSE](LICENSE) file.