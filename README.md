# Quickstart

To start a containerised, temporarily persistent neovim instance on any machine with internet access run:
```sh
docker run --rm -it -v /tmp/my_nvim_config:/root -v .:/cwd --network host ghcr.io/cian-h/my_nvim:latest
```
