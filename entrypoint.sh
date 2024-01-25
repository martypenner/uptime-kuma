#!/bin/bash

set -euo pipefail

tailscaled --tun=userspace-networking &
tailscale up --authkey=${TS_AUTHKEY} --hostname=uptime-kuma

exec /usr/bin/dumb-init -- extra/entrypoint.sh node server/server.js
