#!/usr/bin/env sh

mkdir -p ~/.config/nvim

WORKDIR=$(pwd)

cd /my_nvim_config
git remote update
if ! git rev-list --count HEAD..@{upstream} > /dev/null; then
    git pull
    STALE_CONFIG=true
else
    STALE_CONFIG=false
fi

if [ ! "$(ls -A ~/.config/nvim)" ] || $STALE_CONFIG; then
    cp -r /my_nvim_config/* ~/.config/nvim/
fi

cd "$WORKDIR"

/usr/bin/env nvim
