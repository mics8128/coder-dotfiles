#!/usr/bin/env bash

BIN_PATH=$HOME/.local/bin

# 設定 安裝時的 PATH
mkdir -p $BIN_PATH
PATH=$BIN_PATH:$PATH

# 安裝 yadm (sh)
if [[ ! -f $(which yadm) ]]; then
    echo installing yadm...
    curl -sfLo $BIN_PATH/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x $BIN_PATH/yadm > /dev/null
else
    echo yadm already installed
fi

# fix locale issues
sudo locale-gen "en_US.UTF-8"

yadm clone git@github.com:mics8128/dotfiles-yadm.git
yadm bootstrap