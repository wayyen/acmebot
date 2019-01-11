# Custom Ubuntu ACME Docker Image

## Details

*   This image is based from official Ubuntu 18.04 LTS.
*   The image is preloaded with:
    - [Neil Pang's acme.sh](https://github.com/Neilpang/acme.sh/wiki) linked in /root/bin/acme.sh (included in PATH)
    - VIM
    - Cron
*   Working directory is set to /certs. Mount a host volume on this path to export the certs created.
