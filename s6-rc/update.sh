#!/bin/sh
set -e
cd /etc/s6-rc
db="compiled-$(date -Iseconds)"
s6-rc-compile "$db" services
s6-rc-update "$(realpath "$db")"
ln -svF "$db" compiled
