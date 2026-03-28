#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

REPO_DIR="/home/opc/su386.dev/compiled/"
WEB_ROOT="/usr/share/nginx/html/"

cd "$REPO_DIR" || {exit 1; }
git pull
sudo rsync -av --delete ./compiled/ "$WEB_ROOT"
