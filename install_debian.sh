#!/bin/sh
set -e

ROOT_HOME="/root"
USER_HOME="/home/nia"

install -m 644 ./config/keyrings/* /usr/share/keyrings/
install -m 644 ./config/sources.list /etc/apt/sources.list

install -m 644 ./config/.bash_aliases "$ROOT_HOME/.bash_aliases"
install -o 1000 -g 1000 -m 644 ./config/.bash_aliases "$USER_HOME/.bash_aliases"

install -o 1000 -g 1000 -m 644 ./config/.gitconfig "$USER_HOME/.gitconfig"

install -o 1000 -g 1000 -m 700 -d "$USER_HOME/.ssh"
install -o 1000 -g 1000 -m 600 ./config/ssh/id_ed25519 "$USER_HOME/.ssh/id_ed25519"
install -o 1000 -g 1000 -m 644 ./config/ssh/id_ed25519.pub "$USER_HOME/.ssh/id_ed25519.pub"