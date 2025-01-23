#!/usr/bin/env bash

docker run --rm -it -v /tmp/my_nvim_config:/root -v .:/cwd --network host ghcr.io/cian-h/my_nvim:latest
