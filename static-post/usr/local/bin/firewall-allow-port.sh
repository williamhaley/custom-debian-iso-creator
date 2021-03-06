#!/usr/bin/env bash

set -e

[ $EUID -ne 0 ] && echo "run as root" >&2 && exit 1

firewall-cmd --zone=public --add-port=${1}/tcp
