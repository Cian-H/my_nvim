#!/usr/bin/env sh

mkdir -p ~/.config/nvim

if [ -z "$(ls -A ~/.config/nvim)" ]; then
    cp -r /my_nvim_config/* ~/.config/nvim/
fi
/usr/bin/env nvim
